###### Class io.dcloud.common.adapter.ui.webview.SysWebView (io.dcloud.common.adapter.ui.webview.SysWebView)
.class public Lio/dcloud/common/adapter/ui/webview/SysWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/webview/DCWebView;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;,
        Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;
    }
.end annotation


# static fields
.field static final PLUSSCROLLBOTTOM_JS_TEMPLATE:Ljava/lang/String; = "(function(){var e = document.createEvent(\'HTMLEvents\');var evt = \'plusscrollbottom\';e.initEvent(evt, false, true);document.dispatchEvent(e);})();"

.field static final TAG:Ljava/lang/String; = "webview"


# instance fields
.field cm:Landroid/webkit/CookieManager;

.field private didTouch:Z

.field isToInvalidate:Z

.field mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field mBaseUrl:Ljava/lang/String;

.field private mCacheMode:I

.field private mContentHeight:I

.field mContext:Landroid/content/Context;

.field private mDcloudwebviewclientListener:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

.field mDeafaltOverScrollMode:I

.field private mEventX:I

.field private mEventY:I

.field private mIsBeingDragged:Z

.field mLastMotionX:F

.field mLastMotionY:F

.field private mLastScrollTimestamp:J

.field private mLastScrollY:I

.field private mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

.field private mPageTitle:Ljava/lang/String;

.field mScale:F

.field private mThreshold:I

.field private mThresholdTime:I

.field private mTouchSlop:I

.field mUrl:Ljava/lang/String;

.field mUrlHeads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUserAgent:Ljava/lang/String;

.field mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field webSettings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    .line 7
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    .line 9
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 10
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 12
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollY:I

    .line 14
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContentHeight:I

    const/4 v2, 0x2

    .line 15
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThreshold:I

    const/16 v2, 0xf

    .line 16
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThresholdTime:I

    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    .line 18
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageTitle:Ljava/lang/String;

    .line 19
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDeafaltOverScrollMode:I

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    .line 24
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    .line 48
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrlHeads:Ljava/util/HashMap;

    .line 872
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventY:I

    .line 873
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventX:I

    .line 874
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mTouchSlop:I

    const/4 v0, 0x1

    .line 914
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    .line 915
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    const-string v1, "WebViewImpl"

    .line 916
    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 918
    sget p1, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    add-int/2addr p1, v0

    sput p1, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    .line 919
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V
    .registers 8

    .line 920
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 921
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    .line 923
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 924
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    .line 925
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    .line 926
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 927
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    .line 928
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 929
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    .line 930
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 931
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    const/4 v1, 0x0

    .line 932
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollY:I

    .line 933
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContentHeight:I

    const/4 v2, 0x2

    .line 934
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThreshold:I

    const/16 v2, 0xf

    .line 935
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThresholdTime:I

    const-wide/16 v2, 0x0

    .line 936
    iput-wide v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    .line 937
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageTitle:Ljava/lang/String;

    .line 938
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDeafaltOverScrollMode:I

    const/4 v0, -0x1

    .line 940
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    .line 943
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    .line 967
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z

    .line 1121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrlHeads:Ljava/util/HashMap;

    .line 1791
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventY:I

    .line 1792
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventX:I

    .line 1793
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mTouchSlop:I

    const/4 v0, 0x1

    .line 1833
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    .line 1834
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    const-string v1, "WebViewImpl"

    .line 1835
    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 1837
    sget p1, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    add-int/2addr p1, v0

    sput p1, Lio/dcloud/common/util/BaseInfo;->s_Webview_Count:I

    .line 1838
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 1839
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDcloudwebviewclientListener:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)V
    .registers 8

    .line 1840
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1841
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    .line 1843
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 1844
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    .line 1845
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    .line 1846
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1847
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    .line 1848
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 1849
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    .line 1850
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 1851
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    const/4 v1, 0x0

    .line 1852
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollY:I

    .line 1853
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContentHeight:I

    const/4 v2, 0x2

    .line 1854
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThreshold:I

    const/16 v2, 0xf

    .line 1855
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThresholdTime:I

    const-wide/16 v2, 0x0

    .line 1856
    iput-wide v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    .line 1857
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageTitle:Ljava/lang/String;

    .line 1858
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDeafaltOverScrollMode:I

    const/4 v0, -0x1

    .line 1860
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    .line 1863
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    .line 1887
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z

    .line 2041
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrlHeads:Ljava/util/HashMap;

    .line 2711
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventY:I

    .line 2712
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mEventX:I

    .line 2713
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mTouchSlop:I

    const/4 v0, 0x1

    .line 2753
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    const-string v0, "WebViewImpl"

    .line 2754
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    .line 2756
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 2757
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

    .line 2758
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    return-void
.end method

.method private captureWebView(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget v2, p2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p2, :cond_5f

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    if-eqz p2, :cond_5f

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    if-eqz p2, :cond_5f

    .line 7
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->getChilds()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v2, 0x1

    if-le p2, v2, :cond_5f

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_5e
    return-object v0

    .line 14
    :cond_5f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge p2, v2, :cond_73

    .line 15
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_76

    .line 17
    :cond_73
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    :goto_76
    return-object v0
.end method

.method private static getStreamAppFlag()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, ""

    goto :goto_26

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_26
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, " StreamApp/1.0%s"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUnSafeJavascriptInterface()V
    .registers 9

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x11

    if-ge v0, v1, :cond_3a

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "removeJavascriptInterface"

    .line 6
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x3

    const-string v3, "searchBoxJavaBridge_"

    const-string v5, "accessibility"

    const-string v6, "ccessibilityaversal"

    .line 8
    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_28
    if-ge v5, v2, :cond_3a

    .line 9
    aget-object v6, v3, v5

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v4

    .line 10
    invoke-virtual {v0, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_36

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :catch_36
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    return-void
.end method

.method private setWebViewData()V
    .registers 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    .line 4
    :try_start_a
    const-class v4, Landroid/webkit/WebView;

    const-string v5, "getFactory"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v0, [Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    .line 8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v5, v0
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1f} :catch_36

    const/4 v0, 0x0

    .line 10
    :try_start_20
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setWebContentsDebuggingEnabled"

    .line 14
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 19
    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_36} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_36} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_36} :catch_36
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_36} :catch_36

    :catch_36
    :cond_36
    return-void
.end method


# virtual methods
.method public checkApkUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ".apk"

    if-nez v0, :cond_14

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    return v1

    .line 6
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v1

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public checkOverrideUrl(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "match"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_66

    :try_start_6
    const-string v3, "effect"

    const-string v4, "instant"

    .line 1
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "touchstart"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isDidTouch()Z

    move-result v3

    if-nez v3, :cond_1d

    return v2

    .line 5
    :cond_1d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    const-string v4, "exclude"

    .line 7
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "redirect"

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    if-nez v3, :cond_36

    return v2

    :cond_36
    const-string v3, "mode"

    .line 19
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    goto :goto_54

    :cond_53
    const/4 p1, 0x1

    :goto_54
    const-string p2, "allow"

    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5a} :catch_62

    if-eqz p2, :cond_5f

    if-eqz p1, :cond_67

    goto :goto_66

    :cond_5f
    if-eqz p1, :cond_66

    goto :goto_67

    :catch_62
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_66
    :goto_66
    const/4 v1, 0x0

    :cond_67
    :goto_67
    return v1
.end method

.method public checkWhite(Ljava/lang/String;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "center"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7d

    :cond_23
    const-string v0, "top"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/DeviceInfo;->getDeivceSuitablePixel(Landroid/app/Activity;I)I

    move-result v0

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7d

    :cond_43
    const-string v0, "bottom"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 12
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v3, 0x19

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/DeviceInfo;->getDeivceSuitablePixel(Landroid/app/Activity;I)I

    move-result v0

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7d

    .line 15
    :cond_6c
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 16
    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    :goto_7d
    invoke-direct {p0, p0, v3}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->captureWebView(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_84

    return v2

    :cond_84
    const-string v2, "auto"

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->isLoaded()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {v0, p1, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;ZZ)Z

    move-result p1

    goto :goto_a3

    :cond_98
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->isLoaded()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->isLineWhiteBitmap(Landroid/graphics/Bitmap;Z)Z

    move-result p1

    .line 24
    :goto_a3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return p1
.end method

.method public closeWap2AppBlockDialog(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->closeWap2AppBlockDialog(Z)V

    return-void
.end method

.method public convertRelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    .line 6
    :cond_13
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_28

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_28
    :goto_28
    return-object p1
.end method

.method public destroyWeb()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearDisappearingChildren()V

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v1, :cond_30

    .line 8
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 11
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->destroy()V

    .line 12
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    .line 13
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->destroy()V

    .line 14
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    .line 15
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    .line 16
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    :cond_30
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_15
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public doKeyDownAction(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/dcloud/e;

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 3
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v1, p1, p2}, Lio/dcloud/e;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1b

    .line 5
    :cond_15
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v1, p1, p2}, Lio/dcloud/e;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1b
    if-eqz v0, :cond_1e

    goto :goto_22

    .line 7
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_22
    return v0
.end method

.method public doKeyUpAction(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/dcloud/e;

    .line 2
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v1, p1, p2}, Lio/dcloud/e;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_15

    .line 3
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0
.end method

.method downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J
    .registers 20

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    move-result-object v2

    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move-object v11, p2

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;-><init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v7, p2

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lio/dcloud/common/adapter/util/DownloadUtil;->startRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6

    const-string v0, "javascript:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3c

    .line 4
    :try_start_e
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;

    invoke-direct {v0, p0, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;-><init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_3c

    :catchall_17
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e.getMessage()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p2, :cond_3c

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 16
    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    :goto_3c
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    return v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageTitle()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshListener()Lcom/dcloud/android/v4/widget/IRefreshAble$OnRefreshListener;
    .registers 1

    return-object p0
.end method

.method public getScale()F
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    return v0
.end method

.method public getUrlStr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/view/ViewGroup;
    .registers 1

    return-object p0
.end method

.method public getWebViewScrollY()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 9

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;-><init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 17
    sget-boolean v0, Lio/dcloud/common/adapter/ui/AdaWebview;->setedWebViewData:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_76

    .line 19
    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result v0

    .line 20
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const-string v4, "use_encryption"

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 22
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v4

    .line 23
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    const-string v6, "control"

    invoke-interface {v5, v6}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    xor-int/lit8 v6, v4, 0x1

    .line 25
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4b

    if-eqz v4, :cond_4b

    const-string v4, "uni-v3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v6, 0x1

    :cond_4b
    if-nez v0, :cond_5a

    .line 28
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v0, :cond_56

    if-nez v3, :cond_56

    if-eqz v6, :cond_56

    goto :goto_5a

    .line 36
    :cond_56
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->setWebViewData()V

    goto :goto_74

    .line 37
    :cond_5a
    :goto_5a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_74

    new-array v0, v2, [Ljava/lang/Class;

    .line 38
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const-string v5, "android.webkit.WebView"

    const-string v6, "setWebContentsDebuggingEnabled"

    invoke-static {v5, v6, v4, v0, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_74
    :goto_74
    sput-boolean v2, Lio/dcloud/common/adapter/ui/AdaWebview;->setedWebViewData:Z

    .line 48
    :cond_76
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 49
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_85

    .line 50
    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDeafaltOverScrollMode:I

    .line 54
    :cond_85
    :try_start_85
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 55
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_d9

    .line 57
    const-class v0, Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_98
    .catchall {:try_start_85 .. :try_end_98} :catchall_c4

    const-string v3, "setAcceptThirdPartyCookies"

    :try_start_9a
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/webkit/WebView;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v5, v2

    invoke-static {v0, v3, v4, v6, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    invoke-virtual {v0, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 59
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 60
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_c3
    .catchall {:try_start_9a .. :try_end_c3} :catchall_c4

    goto :goto_d9

    :catchall_c4
    move-exception v0

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebViewImpl CookieManager.getInstance Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 66
    :cond_d9
    :goto_d9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->onInit()V

    .line 74
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebviewBaseUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    const/high16 v3, 0x2000000

    .line 81
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 82
    sget-object v3, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    if-eqz v3, :cond_101

    .line 83
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_104

    .line 85
    :cond_101
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->initUserAgent(Lio/dcloud/common/DHInterface/IApp;)V

    .line 87
    :goto_104
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-static {v3, v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;Z)V

    .line 88
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    const-string v3, "GB2312"

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 93
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->getCacheMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 95
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 96
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 97
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 98
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 99
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->scalable:Z

    .line 100
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportZoom()Z

    .line 101
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 102
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 103
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 104
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_166

    .line 105
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 107
    :cond_166
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppWebCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 109
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppWebCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 111
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_1c5

    .line 115
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "maxSize"

    const-wide/16 v4, 0x0

    .line 117
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 118
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1c5

    .line 120
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v6, v7}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 123
    :cond_1c5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1d0

    .line 124
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 126
    :cond_1d0
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 127
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppWebCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    const/16 v3, 0x15

    if-lt v0, v3, :cond_203

    .line 131
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "android.webkit.WebSettings"

    const-string v5, "setMixedContentMode"

    invoke-static {v1, v5, v0, v3, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_203
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    .line 134
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 135
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 136
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    .line 137
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->setPageFinishedCallack(Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)V

    .line 138
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDcloudwebviewclientListener:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22a

    .line 139
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mDcloudwebviewclientListener:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->setDcloudwebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    .line 141
    :cond_22a
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 142
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->addJavascriptInterface(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    .line 146
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 148
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 149
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->removeUnSafeJavascriptInterface()V

    return-void
.end method

.method public initScalable(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 5
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_24
    return-void
.end method

.method initUserAgent(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 9

    const-string v0, "useragent"

    .line 1
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "concatenate"

    .line 2
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "funSetUA"

    .line 3
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x0

    :cond_1d
    const-string v2, "h5plus"

    .line 7
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 8
    sget-object v3, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 9
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    .line 10
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    sget-object v4, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    const-string v5, "ua"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "save"

    invoke-static {v4, v5, v6, v3}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_51
    sget-object v3, Lio/dcloud/common/adapter/ui/AdaWebview;->sDefalutUserAgent:Ljava/lang/String;

    iput-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    if-nez v1, :cond_60

    .line 15
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 16
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    goto :goto_82

    .line 17
    :cond_60
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    :cond_82
    :goto_82
    const-string v0, "immersed"

    .line 23
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 24
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_c3

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lio/dcloud/common/util/AppStatusBarManager;->checkImmersedStatusBar(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_c3

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (Immersed/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c5

    :cond_c3
    const-string p1, ""

    :goto_c5
    if-eqz v2, :cond_10e

    .line 27
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    const-string v1, " Html5Plus/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_10e

    .line 28
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISAMU:Z

    if-eqz v0, :cond_f8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Html5Plus/1.0 StreamApp/1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    goto :goto_10e

    .line 31
    :cond_f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    .line 34
    :cond_10e
    :goto_10e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "userAgent="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "webview"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_13a

    .line 36
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 38
    :cond_13a
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUserAgent:Ljava/lang/String;

    invoke-static {p1}, Ldc/squareup/HttpConstants;->setUA(Ljava/lang/String;)V

    return-void
.end method

.method public invalidate()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3
    :try_start_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_57

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_31

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgress:I

    const/16 v2, 0x3c

    if-le v1, v2, :cond_57

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_57

    :cond_31
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z

    if-nez v0, :cond_57

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_57

    const-string v1, "rendering"

    :try_start_49
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-void
.end method

.method public isChildSpeciaView(FF)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    .line 5
    :goto_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/dcloud/android/widget/SlideLayout;

    if-eqz v3, :cond_1c

    return v1

    .line 10
    :cond_1c
    instance-of v3, v2, Lio/dcloud/common/DHInterface/INativeView;

    const/4 v4, 0x1

    if-eqz v3, :cond_22

    return v4

    .line 12
    :cond_22
    instance-of v3, v2, Lio/dcloud/common/DHInterface/IVideoPlayer;

    if-eqz v3, :cond_35

    .line 14
    check-cast v2, Lio/dcloud/common/DHInterface/IVideoPlayer;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IVideoPlayer;->isVideoHandleTouch()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 16
    invoke-interface {v2, p1, p2}, Lio/dcloud/common/DHInterface/IVideoPlayer;->isPointInRect(FF)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    return v4

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_38
    return v1
.end method

.method public isDidTouch()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    return v0
.end method

.method protected isReadyForPullUp(I)Z
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mScale:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-ge p1, v0, :cond_2c

    .line 5
    iget v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThreshold:I

    sub-int v3, v0, v3

    if-lt p1, v3, :cond_34

    iget-wide v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    sub-long v3, v1, v3

    iget v5, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mThresholdTime:I

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_34

    :cond_2c
    iget v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollY:I

    iget v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContentHeight:I

    if-ge v3, v4, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    .line 13
    :goto_35
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollY:I

    .line 14
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mContentHeight:I

    .line 15
    iget-wide v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x1f4

    cmp-long p1, v1, v4

    if-gtz p1, :cond_44

    .line 16
    iput-wide v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastScrollTimestamp:J

    :cond_44
    return v3
.end method

.method public listenPageFinishTimeout(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->listenPageFinishTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_51

    :cond_b
    const-string v0, "javascript:"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_40

    const/4 v0, 0x0

    .line 7
    :try_start_1a
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_3c

    :catchall_1e
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e.getMessage()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_3c
    return-void

    :cond_3d
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    .line 17
    :cond_40
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrlHeads:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4e

    .line 19
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_51

    .line 21
    :cond_4e
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->invalidate()V

    :cond_14
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    const-string v0, "AssistantInput"

    const-string v1, "onCreateInputConnection 00"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :try_start_7
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_23

    .line 5
    :try_start_b
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->AuxiliaryInput:Z

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    .line 6
    new-instance v1, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    sget-object v3, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-direct {v1, v2, v0, p1, v3}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;-><init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_21

    .line 7
    :try_start_1a
    sput-object v1, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_1e

    move-object v0, v1

    goto :goto_28

    :catchall_1e
    move-exception p1

    move-object v0, v1

    goto :goto_25

    :catchall_21
    move-exception p1

    goto :goto_25

    :catchall_23
    move-exception p1

    const/4 v0, 0x0

    .line 10
    :goto_25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_28
    :goto_28
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebJsEvent:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->releaseDefaultVideoPoster()V

    .line 5
    :cond_a
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->endRefresh()V

    :cond_39
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p5

    const-string v6, "android.intent.action.VIEW"

    .line 1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDownloadStart "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "userAgent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "contentDisposition= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "mimetype= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "contentLength= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "webview"

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_44
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4
    sget v9, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v10, 0x8

    if-le v9, v10, :cond_dc

    if-eqz v7, :cond_120

    .line 5
    instance-of v9, v7, Landroid/app/Activity;

    if-eqz v9, :cond_120

    .line 7
    invoke-static {v0, v3, v2}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_download_do_file:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    cmp-long v12, v10, v4

    if-gez v12, :cond_a3

    .line 10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u3010"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v4, Ljava/math/BigDecimal;

    const-wide/32 v11, 0x100000

    invoke-direct {v4, v11, v12}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v5, 0x2

    const/4 v11, 0x4

    invoke-virtual {v9, v4, v5, v11}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "MB\u3011"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_a3
    move-object v11, v9

    .line 12
    move-object v10, v7

    check-cast v10, Landroid/app/Activity;

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_download:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v7, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;

    invoke-direct {v14, v1, v0, v2, v3}, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;-><init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x50

    .line 19
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v0

    const-wide v21, 0x3feccccccccccccdL    # 0.9

    mul-double v3, v3, v21

    double-to-int v0, v3

    move/from16 v21, v0

    .line 20
    invoke-static/range {v10 .. v21}, Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V

    goto :goto_120

    .line 30
    :cond_dc
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_eb} :catch_ec

    goto :goto_120

    :catch_ec
    move-exception v0

    const-string v3, "webview onDownloadStart"

    .line 36
    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser will download url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_106
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 41
    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_11b} :catch_11c

    goto :goto_120

    :catch_11c
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_120
    :goto_120
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isChildSpeciaView(FF)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    const/4 v4, 0x2

    if-eq v0, v4, :cond_21

    goto :goto_4d

    .line 13
    :cond_21
    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastMotionX:F

    sub-float/2addr v1, v0

    .line 14
    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastMotionY:F

    sub-float/2addr v2, v0

    .line 16
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4d

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4d

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 18
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    goto :goto_4d

    .line 20
    :cond_47
    iput v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastMotionY:F

    .line 21
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mLastMotionX:F

    .line 22
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    .line 37
    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mIsBeingDragged:Z

    if-eqz v0, :cond_52

    goto :goto_56

    :cond_52
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_56
    return v0

    .line 39
    :cond_57
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_9
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->doKeyDownAction(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-eqz v0, :cond_9

    .line 2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_9
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->doKeyUpAction(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPageStarted()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isToInvalidate:Z

    return-void
.end method

.method public onPreloadJSContent(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onPreloadJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRefresh(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pulldownrefreshevent"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pullToRefresh"

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_b

    .line 3
    :cond_7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez p1, :cond_c

    :cond_b
    return-void

    .line 4
    :cond_c
    sget-boolean p1, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-nez p1, :cond_39

    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->isReadyForPullUp(I)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4e0a\u62c9\u4e8b\u4ef6  url="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onPlusScrollBottom"

    invoke-static {p3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const-string p3, "(function(){var e = document.createEvent(\'HTMLEvents\');var evt = \'plusscrollbottom\';e.initEvent(evt, false, true);document.dispatchEvent(e);})();"

    invoke-virtual {p1, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    .line 8
    :cond_39
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p1, :cond_a5

    const-string p3, "type"

    .line 10
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "transparent"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a5

    .line 11
    iget-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p3, p3, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p3

    iget p3, p3, Lio/dcloud/common/adapter/util/ViewOptions;->coverage:I

    if-ge p3, p4, :cond_68

    if-ge p3, p2, :cond_68

    return-void

    .line 15
    :cond_68
    iget-object p4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p4

    invoke-interface {p4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p4

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    .line 16
    instance-of v0, p4, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v0, :cond_a5

    .line 17
    check-cast p4, Lio/dcloud/common/DHInterface/ITitleNView;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-static {p4, v0, p2, p1, p3}, Lio/dcloud/common/util/TitleNViewUtil;->updateTitleNViewStatus(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;FLorg/json/JSONObject;F)V

    :cond_a5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2d

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 9
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_44

    .line 10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "touchstart"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_44
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUpdatePlusData(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onUpdatePlusData(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putHeads(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrlHeads:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeAllCookie()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_7
    return-void
.end method

.method public removeAllViews()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_44

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v2

    if-eq v1, v2, :cond_1d

    .line 4
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_20

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :catch_20
    nop

    .line 8
    invoke-super {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;II)V

    :cond_44
    return-void
.end method

.method public removeSessionCookie()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    :cond_7
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->cm:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_14
    return-void
.end method

.method public setDcloudwebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->setDcloudwebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    return-void
.end method

.method public setDidTouch(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->didTouch:Z

    return-void
.end method

.method public setPageTitle(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mPageTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrlStr(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public setWebViewCacheMode(Ljava/lang/String;)V
    .registers 3

    const-string v0, "default"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    goto :goto_2f

    :cond_c
    const-string v0, "cacheElseNetwork"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    goto :goto_2f

    :cond_18
    const-string v0, "noCache"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    goto :goto_2f

    :cond_24
    const-string v0, "cacheOnly"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    .line 10
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    if-nez v0, :cond_6

    if-nez p1, :cond_9

    .line 2
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_9
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;-><init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Landroid/view/ActionMode$Callback;)V

    .line 4
    invoke-super {p0, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 6
    :cond_10
    invoke-super {p0, p1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mUrl:Ljava/lang/String;

    if-ltz v0, :cond_1a

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">;<hashcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3d
    invoke-super {p0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public webReload(Z)V
    .registers 3

    if-eqz p1, :cond_10

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mWebLoadEvent:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->reset()V

    .line 4
    :cond_9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_17

    .line 6
    :cond_10
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->webSettings:Landroid/webkit/WebSettings;

    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mCacheMode:I

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_17
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.AnonymousClass1 (io.dcloud.common.adapter.ui.webview.SysWebView$1)
.class Lio/dcloud/common/adapter/ui/webview/SysWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;->evalJSSync(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.AnonymousClass2 (io.dcloud.common.adapter.ui.webview.SysWebView$2)
.class Lio/dcloud/common/adapter/ui/webview/SysWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    const/4 p1, 0x1

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_2d

    .line 2
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;

    move-result-object v0

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->hasRefreshOperator()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_2d

    .line 5
    :cond_20
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$2;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isUserSelect:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    xor-int/2addr p1, v0

    :catch_2d
    :cond_2d
    :goto_2d
    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.AnonymousClass3 (io.dcloud.common.adapter.ui.webview.SysWebView$3)
.class Lio/dcloud/common/adapter/ui/webview/SysWebView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$appName:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    const-string v3, " "

    const/4 v4, 0x0

    if-nez p3, :cond_42

    const/4 v5, -0x1

    move/from16 v6, p1

    if-ne v6, v5, :cond_42

    if-nez v0, :cond_42

    .line 3
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object v6, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    iget-object v7, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$appName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    sget v5, Lio/dcloud/base/R$string;->dcloud_common_download_failed:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    return-object v4

    .line 7
    :cond_42
    iget-object v5, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

    const/4 v6, 0x7

    const-string v7, "content://"

    const-string v8, "file://"

    if-eqz v5, :cond_8f

    .line 9
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    :cond_5d
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 15
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v9, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v5, v9}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 18
    :cond_75
    iget-object v10, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-static {v10, v5, v9}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 19
    iget-object v9, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$callBack:Lio/dcloud/common/DHInterface/ILoadCallBack;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0, v5}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "true"

    .line 20
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    return-object v4

    :cond_8f
    if-nez v2, :cond_168

    .line 31
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_a3
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_bb
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v6, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-static {v6, v0, v2}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v6, ".apk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 46
    :try_start_dc
    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->getApkFileInfo(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;

    move-result-object v0

    .line 47
    iget-object v2, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object v14, v0, Lio/dcloud/common/adapter/util/PlatformUtil$APKInfo;->mAppName:Ljava/lang/String;

    .line 49
    instance-of v0, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_13e

    .line 50
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 51
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_109

    .line 62
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/high16 v5, 0x44000000    # 512.0f

    invoke-static {v0, v2, v10, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_106
    move-object/from16 v17, v0

    goto :goto_116

    .line 64
    :cond_109
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v2, v10, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_106

    .line 67
    :goto_116
    iget-object v11, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    sget v5, Lio/dcloud/base/R$string;->dcloud_common_download_complete:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v11 .. v17}, Lio/dcloud/common/util/NotificationUtil;->createCustomNotification(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_139} :catch_13a

    return-object v4

    :catch_13a
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    :cond_13e
    iget-object v7, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    iget-object v8, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$appName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/SysWebView$3;->val$context:Landroid/content/Context;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_complete:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v13

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, 0x1

    invoke-static/range {v7 .. v14}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    :cond_168
    return-object v4
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.AnonymousClass4 (io.dcloud.common.adapter.ui.webview.SysWebView$4)
.class Lio/dcloud/common/adapter/ui/webview/SysWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$mimetype:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$name:Ljava/lang/String;

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/SysWebView;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$4;->val$mimetype:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->downloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.BorderDrawable (io.dcloud.common.adapter.ui.webview.SysWebView$BorderDrawable)
.class Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BorderDrawable"
.end annotation


# instance fields
.field mBackgroundColor:I

.field mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    .line 5
    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mBackgroundColor:I

    .line 6
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.SysWebView.CustomizedSelectActionModeCallback (io.dcloud.common.adapter.ui.webview.SysWebView$CustomizedSelectActionModeCallback)
.class public Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/SysWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomizedSelectActionModeCallback"
.end annotation


# instance fields
.field callback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/webview/SysWebView;Landroid/view/ActionMode$Callback;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->this$0:Lio/dcloud/common/adapter/ui/webview/SysWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->callback:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 2
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_37

    .line 4
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_30

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7
    :cond_30
    :goto_30
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/Menu;->removeItem(I)V

    :cond_37
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/SysWebView$CustomizedSelectActionModeCallback;->callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
