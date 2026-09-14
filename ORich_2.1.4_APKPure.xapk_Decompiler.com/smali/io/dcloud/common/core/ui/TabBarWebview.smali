###### Class io.dcloud.common.core.ui.TabBarWebview (io.dcloud.common.core.ui.TabBarWebview)
.class public Lio/dcloud/common/core/ui/TabBarWebview;
.super Lio/dcloud/common/adapter/ui/AdaWebview;
.source "SourceFile"


# instance fields
.field private isVisible:Z

.field private mApp:Lio/dcloud/common/DHInterface/IApp;

.field private mChildJson:Lcom/alibaba/fastjson/JSONArray;

.field private mPagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Landroid/view/ViewGroup;

.field mScale:F

.field private mSelectIndex:I

.field private mTabBar:Lcom/dcloud/android/widget/TabView;

.field private mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

.field private mTabItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:Landroid/widget/FrameLayout;

.field private mWindowMgr:Lio/dcloud/common/core/ui/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/c;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaWebview;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 2
    iput v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 8
    iput-object p4, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 9
    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    const-string p3, "TabBar"

    .line 12
    invoke-virtual {p0, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lio/dcloud/common/core/ui/TabBarWebview;->initPagePaths(Lcom/alibaba/fastjson/JSONObject;)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iput p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    .line 15
    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 16
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p5, "child"

    .line 17
    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    .line 18
    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    .line 19
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p5, "selected"

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_73

    .line 20
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p3, p5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_73

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 26
    :cond_73
    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    .line 27
    new-instance p3, Lcom/dcloud/android/widget/TabView;

    iget-object p5, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBarJson:Lcom/alibaba/fastjson/JSONObject;

    iget v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    invoke-direct {p3, p1, p5, v0, p2}, Lcom/dcloud/android/widget/TabView;-><init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;FLio/dcloud/common/DHInterface/IApp;)V

    iput-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    .line 28
    invoke-virtual {p0, p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 29
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p3}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 31
    iget-object p3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    iget-object p5, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->setLancheTabBar(Lio/dcloud/common/core/ui/TabBarWebview;)V

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    .line 34
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    return-object p0
.end method

.method private initPagePaths(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    const-string v0, "list"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 4
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "pagePath"

    .line 5
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "/"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :cond_30
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_38
    return-void
.end method


# virtual methods
.method public append(Lio/dcloud/common/core/ui/b;)V
    .registers 10

    const-string v0, "0px"

    if-eqz p1, :cond_c8

    .line 17
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_47

    .line 19
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->p()V

    .line 20
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    iput-byte v4, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 21
    iget-object v2, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 22
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->e()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 23
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v6, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    const/16 v7, 0x1c

    invoke-virtual {v2, v5, v7, v6}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 24
    iput-object v2, p1, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    .line 26
    :cond_32
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->r()V

    .line 27
    invoke-virtual {p1, v3}, Lio/dcloud/common/core/ui/b;->b(Z)V

    .line 28
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    iput-byte v3, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 31
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    :cond_47
    invoke-virtual {p1, v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->setTabItem(Z)V

    .line 35
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v6, 0x16

    invoke-virtual {v2, v5, v6, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_58
    const-string v5, "top"

    .line 42
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5d} :catch_72

    const-string v5, "bottom"

    .line 43
    :try_start_5f
    iget-boolean v6, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz v6, :cond_69

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v0

    :cond_69
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isTab"

    .line 44
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_71} :catch_72

    goto :goto_76

    :catch_72
    move-exception v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 48
    :goto_76
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 49
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 52
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setParentFrameItem(Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;)V

    .line 54
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iput-boolean v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 56
    iput-boolean v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 57
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 60
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_b2
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_bc

    .line 63
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 65
    :cond_bc
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/TabBarWebview$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview$a;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c8
    return-void
.end method

.method public append(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 13

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_50

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    if-eqz v0, :cond_50

    .line 2
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v7, "ui"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v7, "findWebview"

    const/4 v9, 0x2

    aput-object v7, v4, v9

    new-array v7, v9, [Ljava/lang/String;

    .line 3
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    aput-object p1, v7, v8

    const/4 p1, 0x3

    aput-object v7, v4, p1

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v3, p1, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_4c

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    instance-of v0, p1, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_53

    .line 9
    check-cast p1, Lio/dcloud/common/core/ui/b;

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->append(Lio/dcloud/common/core/ui/b;)V

    .line 10
    invoke-interface {p2, v6, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 13
    :cond_4c
    invoke-interface {p2, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 16
    :cond_50
    invoke-interface {p2, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_53
    return-void
.end method

.method public checkPagePathIsTab(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public checkUrlToReload(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    const-string v3, ".js"

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3f

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 4
    iget-object p1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v5, 0xa

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    aput-object v2, v6, v0

    const-string v2, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object v2, v6, v4

    const/4 v2, 0x2

    const-string v7, "updateReload"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    aput-object v1, v6, v2

    invoke-virtual {p1, v3, v5, v6}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 6
    :cond_3f
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->reload()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55

    return v4

    :catch_55
    :cond_55
    return v0
.end method

.method public dispose()V
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispose()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->dispose()V

    .line 5
    :cond_a
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mPagePaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_16
    return-void
.end method

.method public evalJS(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public evalJS(Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)V
    .registers 3

    return-void
.end method

.method public executeScript(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mScale:F

    return v0
.end method

.method public getSelectIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    return v0
.end method

.method public getTabBarHeight()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "animation"

    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 8
    :goto_18
    invoke-virtual {p0, v2}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->bringMaskToFront()V

    if-eqz p1, :cond_4e

    .line 12
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getMidHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x64

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 14
    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$b;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$b;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 31
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5a

    .line 33
    :cond_4e
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$c;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$c;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    const-wide/16 v3, 0x96

    invoke-virtual {p1, v0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :goto_5a
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return-void
.end method

.method public hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public isInsertLauch()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 2
    :goto_6
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 3
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mChildJson:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lauchwebview"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v1
.end method

.method public isVisible()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return v0
.end method

.method public obtainApp()Lio/dcloud/common/DHInterface/IApp;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    return-object v0
.end method

.method public obtainWindowView()Landroid/view/ViewGroup;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onResize()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onResize()V

    return-void
.end method

.method public popFrame(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_42

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "ui"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "findWebview"

    const/4 v7, 0x2

    aput-object v5, v2, v7

    new-array v5, v7, [Ljava/lang/String;

    .line 3
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    aput-object p1, v5, v6

    const/4 p1, 0x3

    aput-object v5, v2, p1

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_42

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_42
    return-void
.end method

.method public pushFrame(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_40

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "ui"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "findWebview"

    const/4 v7, 0x2

    aput-object v5, v2, v7

    new-array v5, v7, [Ljava/lang/String;

    .line 3
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    aput-object p1, v5, v6

    const/4 p1, 0x3

    aput-object v5, v2, p1

    const/16 p1, 0xa

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 6
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_40

    .line 7
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_40
    return-void
.end method

.method public removeFrameView(Lio/dcloud/common/core/ui/b;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setSingleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setDoubleClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setDoubleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setItem(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarItem(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setMask(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMask(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setMaskButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMaskCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setMidButtonClickCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setMidCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method public setStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_1e

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarStyle(Lcom/alibaba/fastjson/JSONObject;)V

    const-string v0, "height"

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 3
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    :cond_1e
    return-void
.end method

.method public setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public setTabItemsBottomMargin(I)V
    .registers 8

    const-string v0, "0px"

    .line 1
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_6d

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    if-eqz v2, :cond_1b

    .line 6
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_30

    goto :goto_1b

    .line 9
    :cond_30
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_35
    const-string v4, "top"

    .line 11
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_3a} :catch_50

    const-string v4, "bottom"

    if-lez p1, :cond_45

    .line 12
    :try_start_3e
    iget-object v5, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v5}, Lcom/dcloud/android/widget/TabView;->getTabHeightStr()Ljava/lang/String;

    move-result-object v5

    goto :goto_46

    :cond_45
    move-object v5, v0

    :goto_46
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "isTab"

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4f} :catch_50

    goto :goto_54

    :catch_50
    move-exception v4

    .line 15
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 17
    :goto_54
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 18
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/TabBarWebview$e;

    invoke-direct {v4, p0, v2}, Lio/dcloud/common/core/ui/TabBarWebview$e;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b

    .line 29
    :cond_68
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    :cond_6d
    return-void
.end method

.method public show(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "animation"

    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    if-eqz p1, :cond_41

    .line 9
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/TabView;->getMidHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x64

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 11
    new-instance v0, Lio/dcloud/common/core/ui/TabBarWebview$d;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/TabBarWebview$d;-><init>(Lio/dcloud/common/core/ui/TabBarWebview;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 27
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4a

    .line 29
    :cond_41
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    .line 31
    :goto_4a
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->isVisible:Z

    return-void
.end method

.method public showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public switchSelect(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mSelectIndex:I

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->switchTab(I)V

    return-void
.end method

.method public tabItemActive(Lio/dcloud/common/core/ui/b;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 2
    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    if-eqz p1, :cond_1e

    if-ne v2, p1, :cond_1e

    .line 4
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_35

    .line 6
    :cond_1e
    iget-object v3, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/b;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 7
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_38
    return-void
.end method

.method public updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview;->mTabBar:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.a (io.dcloud.common.core.ui.TabBarWebview$a)
.class Lio/dcloud/common/core/ui/TabBarWebview$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->append(Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.b (io.dcloud.common.core.ui.TabBarWebview$b)
.class Lio/dcloud/common/core/ui/TabBarWebview$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$b;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$b;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {p1}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.c (io.dcloud.common.core.ui.TabBarWebview$c)
.class Lio/dcloud/common/core/ui/TabBarWebview$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->hideTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$c;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$c;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {v0}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.d (io.dcloud.common.core.ui.TabBarWebview$d)
.class Lio/dcloud/common/core/ui/TabBarWebview$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->showTabBar(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/TabBarWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$d;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/TabBarWebview$d;->a:Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-static {p1}, Lio/dcloud/common/core/ui/TabBarWebview;->access$000(Lio/dcloud/common/core/ui/TabBarWebview;)Lcom/dcloud/android/widget/TabView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/TabView;->getTabHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.core.ui.TabBarWebview.e (io.dcloud.common.core.ui.TabBarWebview$e)
.class Lio/dcloud/common/core/ui/TabBarWebview$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/TabBarWebview;->setTabItemsBottomMargin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/TabBarWebview;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_21

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 3
    invoke-static {v0, v1, v1, v2, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 5
    :cond_21
    iget-object v0, p0, Lio/dcloud/common/core/ui/TabBarWebview$e;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    return-void
.end method
