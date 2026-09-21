###### Class com.taobao.weex.ui.view.WXWebView (com.taobao.weex.ui.view.WXWebView)
.class public Lcom/taobao/weex/ui/view/WXWebView;
.super Ljava/lang/Object;
.source "WXWebView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "__WEEX_WEB_VIEW_BRIDGE"

.field private static final DOWNGRADE_JS_INTERFACE:Z

.field private static final POST_MESSAGE:I = 0x1

.field private static final SDK_VERSION:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageHandler:Landroid/os/Handler;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mOrigin:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 68
    :goto_b
    sput-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    .line 75
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-object p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateJS(Ljava/lang/String;)V
    .registers 4

    .line 356
    sget v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 357
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_12

    .line 359
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_12
    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .registers 4

    .line 225
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 233
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$1;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 293
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$2;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 328
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    if-nez v0, :cond_39

    .line 329
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$3;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    const-string v1, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method private onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 339
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    if-eqz v0, :cond_39

    .line 341
    :try_start_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 342
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 343
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string p2, "message"

    .line 344
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    .line 346
    iput p2, p1, Landroid/os/Message;->what:I

    .line 347
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_31
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_8 .. :try_end_31} :catch_32

    goto :goto_39

    :catch_32
    move-exception p1

    .line 350
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_39
    :goto_39
    return-void
.end method

.method private showProgressBar(Z)V
    .registers 3

    .line 210
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    if-eqz v0, :cond_f

    .line 211
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private showWebView(Z)V
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 109
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 110
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 112
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 113
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 114
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 115
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .line 116
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 117
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    :cond_2b
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 5

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 84
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 85
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 88
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 93
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    .line 95
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public goBack()V
    .registers 2

    .line 144
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 146
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .registers 2

    .line 151
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 153
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .registers 9

    .line 130
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 132
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 123
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 125
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .registers 5

    .line 158
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 161
    :cond_7
    :try_start_7
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "message"

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 163
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 164
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function () {var initData = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";try {var event = new MessageEvent(\'message\', initData);window.dispatchEvent(event);} catch (e) {}})();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_3c
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_7 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p1

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reload()V
    .registers 2

    .line 137
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 139
    :cond_7
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-void
.end method

.method public setShowLoading(Z)V
    .registers 2

    .line 186
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass1 (com.taobao.weex.ui.view.WXWebView$1)
.class Lcom/taobao/weex/ui/view/WXWebView$1;
.super Landroid/webkit/WebViewClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 253
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 256
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 258
    :cond_32
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 259
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:(window.postMessage = function(message, targetOrigin) {if (message == null || !targetOrigin) return;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-static {}, Lcom/taobao/weex/ui/view/WXWebView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "prompt(\'__WEEX_WEB_VIEW_BRIDGE://postMessage?message=\' + JSON.stringify(message) + \'&targetOrigin=\' + targetOrigin)"

    goto :goto_51

    :cond_4f
    const-string v0, "__WEEX_WEB_VIEW_BRIDGE.postMessage(JSON.stringify(message), targetOrigin);"

    :goto_51
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "})"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 244
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tag"

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 247
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    .line 270
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 271
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 273
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "page error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 279
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 280
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 281
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "http error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 288
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 289
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "ssl error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .line 237
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageOverride "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass2 (com.taobao.weex.ui.view.WXWebView$2)
.class Lcom/taobao/weex/ui/view/WXWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 9

    .line 312
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WEEX_WEB_VIEW_BRIDGE"

    .line 314
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 315
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string p2, "postMessage"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    const-string p1, "message"

    .line 316
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "targetOrigin"

    .line 317
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 318
    iget-object p3, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p3, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "success"

    .line 319
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_38

    :cond_33
    const-string p1, "fail"

    .line 321
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_38
    const/4 p1, 0x1

    return p1

    .line 325
    :cond_3a
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 7

    .line 296
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 297
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p2, v2, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-static {p1, v3}, Lcom/taobao/weex/ui/view/WXWebView;->access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 298
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    if-eq p2, v2, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 299
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

    .line 304
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 306
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.AnonymousClass3 (com.taobao.weex.ui.view.WXWebView$3)
.class Lcom/taobao/weex/ui/view/WXWebView$3;
.super Ljava/lang/Object;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 2

    .line 329
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$3;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$3;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.WXWebView.MessageHandler (com.taobao.weex.ui.view.WXWebView$MessageHandler)
.class Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
.super Landroid/os/Handler;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXWebView;
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
            "Lcom/taobao/weex/ui/view/WXWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .registers 3

    .line 366
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V
    .registers 3

    .line 363
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 373
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 374
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    goto :goto_32

    .line 376
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 377
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;->mWv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;->onMessage(Ljava/util/Map;)V

    :cond_32
    :goto_32
    return-void
.end method
