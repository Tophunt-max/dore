###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView (io.dcloud.feature.weex.adapter.webview.DCWXWebView)
.class public Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;
.super Ljava/lang/Object;
.source "DCWXWebView.java"

# interfaces
.implements Lio/dcloud/feature/weex/adapter/webview/IDCWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;,
        Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "__dcloud_weex_"

.field private static final POST_MESSAGE:I = 0x1

.field private static final POST_MESSAGE_TO_CONTROL:I = 0x2

.field private static final SDK_VERSION:I


# instance fields
.field chromeClient:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private defaultSystemUI:I

.field private fullscreenContainer:Landroid/widget/FrameLayout;

.field private isStart:Z

.field private mContext:Landroid/content/Context;

.field private mDCWeb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageHandler:Landroid/os/Handler;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnMessageListener:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mOrigin:Ljava/lang/String;

.field public mProgress:I

.field private mRootView:Landroid/widget/FrameLayout;

.field private mShowLoading:Z

.field private mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mShowLoading:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    .line 82
    iput-boolean v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->isStart:Z

    .line 726
    iput v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->defaultSystemUI:I

    .line 87
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOrigin:Ljava/lang/String;

    .line 89
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->hideCustomView()V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->isStart:Z

    return p0
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z
    .registers 2

    .line 61
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->isStart:Z

    return p1
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Ljava/lang/String;I)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->onMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;
    .registers 1

    .line 61
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnMessageListener:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    return-object p0
.end method

.method static synthetic access$900(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->startWebProgress()V

    return-void
.end method

.method private evaluateJS(Ljava/lang/String;)V
    .registers 4

    .line 416
    sget v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->SDK_VERSION:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 417
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_12

    .line 419
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_12
    return-void
.end method

.method private hideCustomView()V
    .registers 3

    .line 701
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 704
    :cond_5
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_41

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_41

    .line 705
    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    .line 706
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    .line 707
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 708
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 709
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2d
    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 712
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customView:Landroid/view/View;

    .line 713
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v1, :cond_3b

    .line 714
    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 715
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 717
    :cond_3b
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_41
    return-void
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .registers 7

    .line 235
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 239
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 240
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 242
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 245
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2a

    .line 248
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 254
    :cond_2a
    sget-object v2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 255
    sget-object v2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_37
    const-string v2, "searchBoxJavaBridge_"

    .line 258
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibilityTraversal"

    .line 259
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibility"

    .line 260
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 261
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Z)V

    const-string v1, "GB2312"

    .line 262
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 263
    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 347
    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->chromeClient:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    .line 348
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_71

    .line 350
    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    const-string v1, "__dcloud_weex_"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_71
    return-void
.end method

.method private onMessage(Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_18

    .line 394
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnMessageListener:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    if-eqz v0, :cond_18

    .line 398
    :try_start_6
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_a

    .line 408
    :catch_a
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 409
    iput p2, v0, Landroid/os/Message;->what:I

    .line 410
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method

.method private setStatusBarVisibility(Landroid/app/Activity;Z)V
    .registers 3

    if-eqz p2, :cond_10

    .line 730
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->defaultSystemUI:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2b

    .line 732
    :cond_10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->defaultSystemUI:I

    .line 733
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x1706

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2b
    return-void
.end method

.method private showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 7

    .line 669
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 670
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 673
    :cond_8
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_57

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_57

    .line 674
    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 676
    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_26

    .line 678
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 679
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeSideBar()V

    .line 680
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IActivityHandler;->setSideBarVisibility(I)V

    goto :goto_31

    .line 682
    :cond_26
    instance-of v2, v0, Lio/dcloud/common/DHInterface/IActivityDelegate;

    if-eqz v2, :cond_31

    .line 683
    move-object v1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IActivityDelegate;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 686
    :cond_31
    :goto_31
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 687
    new-instance v2, Lio/dcloud/feature/weex/adapter/webview/video/FullscreenHolder;

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lio/dcloud/feature/weex/adapter/webview/video/FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    .line 688
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 689
    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->fullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customView:Landroid/view/View;

    const/4 p1, 0x0

    .line 692
    invoke-direct {p0, v0, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    .line 693
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_57
    return-void
.end method

.method private showWebView(Z)V
    .registers 3

    .line 225
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method private startWebProgress()V
    .registers 6

    .line 365
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_d5

    .line 368
    :cond_18
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getWebStyles()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getWebStyles()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "isProgress"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    return-void

    .line 371
    :cond_43
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d5

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto/16 :goto_d5

    .line 375
    :cond_5b
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    if-nez v0, :cond_6c

    .line 376
    new-instance v0, Lcom/dcloud/android/widget/DCWebViewProgressBar;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    .line 379
    :cond_6c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getWebStyles()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "progressColor"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 380
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getWebStyles()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    :cond_91
    const-string v0, "#00FF00"

    .line 382
    :goto_93
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 383
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    const-string v3, "2px"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 384
    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v2, v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->setColorInt(I)V

    .line 385
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0, v4}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->setAlphaInt(I)V

    .line 387
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d0

    .line 388
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    :cond_d0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->startProgress()V

    :cond_d5
    :goto_d5
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 117
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->hideCustomView()V

    .line 118
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 120
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 121
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 122
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    .line 123
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mDCWeb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 124
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnMessageListener:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    .line 125
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebProgressView:Lcom/dcloud/android/widget/DCWebViewProgressBar;

    .line 126
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 127
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    :cond_35
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 4

    .line 94
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 97
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    .line 98
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 101
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 105
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 109
    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mMessageHandler:Landroid/os/Handler;

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getWebView()Landroid/view/View;
    .registers 2

    .line 61
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 231
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 154
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 156
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .registers 2

    .line 161
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 163
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .registers 9

    .line 140
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 142
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOrigin:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 133
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 135
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 215
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->chromeClient:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    if-eqz v0, :cond_7

    .line 216
    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->onResult(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .registers 5

    .line 168
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 171
    :cond_7
    :try_start_7
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "message"

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 173
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function () {var initData = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";try {var event = new MessageEvent(\'onPostMessage\', initData);window.dispatchEvent(event);} catch (e) {}})();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_35
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_7 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p1

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reload()V
    .registers 2

    .line 147
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setOnDCMessageListener(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnMessageListener:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .registers 2

    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-void
.end method

.method public setShowLoading(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mShowLoading:Z

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.AnonymousClass1 (io.dcloud.feature.weex.adapter.webview.DCWXWebView$1)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;
.super Landroid/webkit/WebViewClient;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 308
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 311
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 312
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 314
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    .line 317
    :cond_38
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 318
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    :cond_51
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tag"

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 302
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 324
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 325
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 327
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "page error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 334
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 335
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "http error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 341
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 342
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 343
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "ssl error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    .line 268
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_74

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    const-string p1, "file://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_74

    const/4 p1, 0x1

    :try_start_16
    const-string v1, "intent://"

    .line 271
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 273
    invoke-static {p2, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "android.intent.category.BROWSABLE"

    .line 274
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_34

    .line 277
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 279
    :cond_34
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_73

    .line 281
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    .line 282
    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_73

    .line 285
    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 286
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception p2

    .line 290
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_73
    :goto_73
    return p1

    :cond_74
    return v0
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.AnonymousClass2 (io.dcloud.feature.weex.adapter.webview.DCWXWebView$2)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;
.super Ljava/lang/Object;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 353
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$700(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Ljava/lang/String;I)V

    return-void
.end method

.method public postMessageToService(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 358
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$700(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.DCWXChromeClient (io.dcloud.feature.weex.adapter.webview.DCWXWebView$DCWXChromeClient)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DCWXChromeClient"
.end annotation


# instance fields
.field dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

.field mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUploadMessage21Level:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;


# direct methods
.method private constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;)V
    .registers 3

    .line 455
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    return-void
.end method

.method static synthetic access$1000(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 455
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openFileChooserLogic(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 538
    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-instance v9, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dc_weexsdk"

    const-string p2, "STORAGE"

    invoke-static {v0, p1, p2, v1, v9}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method private showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 552
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 553
    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    .line 554
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.OPENABLE"

    .line 555
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1a

    .line 557
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    :cond_1a
    const-string p3, "*/*"

    .line 559
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    :goto_1f
    new-instance p3, Lio/dcloud/common/adapter/ui/FileChooseDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p3, p4, p1, p2}, Lio/dcloud/common/adapter/ui/FileChooseDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)V

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    .line 563
    :try_start_30
    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->show()V

    .line 564
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    new-instance p2, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_3d

    :catch_3d
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 6

    .line 505
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_20

    .line 506
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-instance v2, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;

    invoke-direct {v2, p0, p2, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string p1, "dc_weexsdk"

    const-string p2, "LOCATION"

    invoke-static {v0, p1, p2, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_23

    .line 518
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_23
    return-void
.end method

.method public onHideCustomView()V
    .registers 2

    .line 658
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$1200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 6

    .line 500
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .line 458
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 460
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iput p2, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    .line 461
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result p1

    const/16 v0, 0x64

    if-nez p1, :cond_22

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    if-ge p1, v0, :cond_22

    .line 462
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$900(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    .line 463
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 465
    :cond_22
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    if-lt p1, v0, :cond_47

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 466
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 467
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 468
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    .line 471
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageProgressChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 476
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 477
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 478
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .registers 11

    .line 583
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    if-eqz v0, :cond_106

    .line 584
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->dismiss()V

    const/4 v0, 0x0

    if-eqz p2, :cond_f5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_90

    if-nez p3, :cond_21

    .line 592
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_17

    .line 593
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1e

    .line 594
    :cond_17
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1e

    .line 595
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 597
    :cond_1e
    :goto_1e
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    return-void

    .line 600
    :cond_21
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_dc

    .line 601
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v1, "content"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_dc

    .line 602
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p3, "_data"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_dc

    .line 604
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 606
    :try_start_53
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const/4 v2, -0x1

    if-le p3, v2, :cond_8c

    .line 608
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 609
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 610
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    const-string v2, "/"

    .line 611
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    const-string v2, "file://"

    goto :goto_79

    :cond_77
    const-string v2, "file:///"

    .line 612
    :goto_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8c} :catch_8c

    .line 618
    :catch_8c
    :cond_8c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_dc

    :cond_90
    const/4 p3, 0x2

    if-ne p1, p3, :cond_db

    .line 622
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    if-eqz p1, :cond_db

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/FileChooseDialog;->uris:Ljava/util/List;

    if-eqz p1, :cond_db

    .line 623
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/FileChooseDialog;->uris:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_db

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 624
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 625
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_dc

    :cond_db
    move-object p1, v0

    :cond_dc
    :goto_dc
    if-eqz p1, :cond_e4

    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    goto :goto_e5

    :cond_e4
    move-object p2, v0

    .line 634
    :goto_e5
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_ed

    .line 635
    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_104

    .line 636
    :cond_ed
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_104

    .line 637
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_104

    .line 641
    :cond_f5
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_fd

    .line 642
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_104

    .line 643
    :cond_fd
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_104

    .line 644
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 648
    :cond_104
    :goto_104
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    :cond_106
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    .line 653
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$1100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 529
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    goto :goto_f

    :cond_e
    const/4 p3, 0x0

    :goto_f
    move-object v4, p3

    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->openFileChooserLogic(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.DCWXChromeClient.AnonymousClass1 (io.dcloud.feature.weex.adapter.webview.DCWXWebView$DCWXChromeClient$1)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .registers 4

    .line 506
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$origin:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 4

    .line 514
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$origin:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 509
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;->val$origin:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.DCWXChromeClient.AnonymousClass2 (io.dcloud.feature.weex.adapter.webview.DCWXWebView$DCWXChromeClient$2)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->openFileChooserLogic(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

.field final synthetic val$acceptType:Ljava/lang/String;

.field final synthetic val$capture:Ljava/lang/String;

.field final synthetic val$uploadMsg:Landroid/webkit/ValueCallback;

.field final synthetic val$uploadMsg21Level:Landroid/webkit/ValueCallback;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 538
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$uploadMsg:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$uploadMsg21Level:Landroid/webkit/ValueCallback;

    iput-object p5, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$acceptType:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$capture:Ljava/lang/String;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 8

    .line 541
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$uploadMsg:Landroid/webkit/ValueCallback;

    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$uploadMsg21Level:Landroid/webkit/ValueCallback;

    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$acceptType:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;->val$capture:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->access$1000(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.DCWXChromeClient.AnonymousClass3 (io.dcloud.feature.weex.adapter.webview.DCWXWebView$DCWXChromeClient$3)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;
.super Ljava/lang/Object;
.source "DCWXWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 568
    :try_start_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 569
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1c

    .line 570
    :cond_f
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1c

    .line 571
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    :goto_1c
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.DCWXWebView.MessageHandler (io.dcloud.feature.weex.adapter.webview.DCWXWebView$MessageHandler)
.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;
.super Landroid/os/Handler;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mWv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .registers 3

    .line 426
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 427
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;)V
    .registers 3

    .line 423
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 433
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    goto :goto_6f

    .line 443
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$800(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "data"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$800(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;->onMessage(Ljava/util/Map;I)V

    goto :goto_6f

    .line 436
    :cond_3e
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$800(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v2, "detail"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$800(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;->onMessage(Ljava/util/Map;I)V

    :cond_6f
    :goto_6f
    return-void
.end method
