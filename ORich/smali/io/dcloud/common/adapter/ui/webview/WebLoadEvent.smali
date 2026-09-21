###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent (io.dcloud.common.adapter.ui.webview.WebLoadEvent)
.class public final Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;,
        Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;
    }
.end annotation


# static fields
.field private static final DIFFERENT_VERSION_JS:Ljava/lang/String; = "window.plus && (plus.android.import=plus.android.importClass);"

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field private static final ERROR_TEMPLATE:Ljava/lang/String; = "javascript:(function(){var b=document.createEvent(\'HTMLEvents\');var a=\'%s\';b.url=\'%s\';b.href=\'%s\';b.initEvent(a,false,true);console.error(a);document.dispatchEvent(b);})();"

.field private static final IF_LOAD_TEMPLATE:Ljava/lang/String; = "(function(){/*console.log(\'eval js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(location.__plusready__||window.__html5plus__){return 1}return 0})();"

.field private static final IF_PLUSREADY_EVENT_TEMPLATE:Ljava/lang/String; = "(function(){/*console.log(\'plusready event loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(location.__plusready__||window.__html5plus__){if(!location.__plusready__event__){location.__plusready__event__=true;return 1}else{return 2}}return 0})();"

.field private static final IF_PLUSREADY_TEMPLATE:Ljava/lang/String; = "(function(){/*console.log(\'all.js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(!location.__plusready__){location.__plusready__=true;return 1}else{return 2}return 0})();"

.field private static final IF_PRELOAD_TEMPLATE:Ljava/lang/String; = "(function(){/*console.log( \'preload js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}var jsfile=\'%s\';if(location.__plusready__||window.__html5plus__){location.__preload__=location.__preload__||[];if(location.__preload__.indexOf(jsfile)<0){location.__preload__.push(jsfile);return 1}else{return 2}}return 0})();"

.field private static final LOADABLE:I = 0x1

.field private static final LOADED:I = 0x2

.field private static final NOLOAD:I = 0x0

.field public static PAGE_FINISHED_FLAG:Ljava/lang/String; = "javascript:setTimeout(function(){location.__page__load__over__ = true;},2000);"

.field public static final PLUSREADY:Ljava/lang/String; = "html5plus://ready"

.field static final TAG:Ljava/lang/String; = "WebLoadEvent"

.field static final Timeout_Page_Finish:I = 0x1770

.field static final Timeout_Plus_Inject:I = 0xbb8

.field public static final UNIAPP_READY:Ljava/lang/String; = "uniapp://ready"


# instance fields
.field TYPE_CSS:Ljava/lang/String;

.field TYPE_JS:Ljava/lang/String;

.field Timeout_Page_Finish_Runnable:Ljava/lang/Runnable;

.field Timeout_Plus_Inject_Runnable:Ljava/lang/Runnable;

.field isInitAmapGEO:Z

.field mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field mAppid:Ljava/lang/String;

.field private mClearCache:Z

.field private mLastPageUrl:Ljava/lang/String;

.field private mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

.field mPlusJS:Ljava/lang/String;

.field mShowLoadingTime:J

.field private mTitleNViewProgressStop:Ljava/lang/Runnable;

.field mWaitingForWapPage:Landroid/widget/ProgressBar;

.field mWap2AppBlockDialog:Lio/dcloud/common/adapter/ui/WaitingView;

.field mWap2AppBlockDialogSysEventListener:Lio/dcloud/common/DHInterface/ISysEventListener;

.field private mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

.field needResponseRedirect:Z

.field printLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->printLog:Z

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

    .line 6
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mClearCache:Z

    const-string v3, ""

    .line 12
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mLastPageUrl:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAppid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialog:Lio/dcloud/common/adapter/ui/WaitingView;

    .line 15
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialogSysEventListener:Lio/dcloud/common/DHInterface/ISysEventListener;

    .line 16
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    const-string v3, "type_js"

    .line 18
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    const-string v3, "type_css"

    .line 19
    iput-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_CSS:Ljava/lang/String;

    .line 21
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->isInitAmapGEO:Z

    .line 23
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    .line 80
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->needResponseRedirect:Z

    .line 853
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    .line 918
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Plus_Inject_Runnable:Ljava/lang/Runnable;

    .line 942
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Page_Finish_Runnable:Ljava/lang/Runnable;

    .line 943
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 944
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAppid:Ljava/lang/String;

    .line 947
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v2, "ramcachemode"

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "enable"

    .line 951
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 952
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mClearCache:Z

    .line 954
    :cond_5a
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->reset()V

    .line 955
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/DLGeolocation;->checkGeo(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->isInitAmapGEO:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onLoadPlusJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onPlusreadyEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkCssFile(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".css"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private checkJsFile(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, ".js"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, ".jsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private checkWebResourceResponseRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 12

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->needResponseRedirect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 4
    :cond_6
    :try_start_6
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9a

    const-string v2, "data"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "io.dcloud.appstream.rules.util.Tools"

    .line 9
    invoke-static {v3}, Lio/dcloud/common/adapter/util/InvokeExecutorHelper;->create(Ljava/lang/String;)Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;

    move-result-object v3

    const-string v4, "getTopDomainInHost"

    invoke-virtual {v3, v4, v2}, Lio/dcloud/common/adapter/util/InvokeExecutorHelper$InvokeExecutor;->invoke(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_9a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 14
    :goto_56
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_90

    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "match"

    .line 16
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "redirect"

    .line 17
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 18
    :goto_6d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_8a

    .line 19
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 21
    invoke-virtual {v8, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_87

    const/4 v4, 0x1

    goto :goto_8a

    :cond_87
    add-int/lit8 v7, v7, 0x1

    goto :goto_6d

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_8d

    goto :goto_91

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_90
    move-object v5, v1

    .line 33
    :goto_91
    invoke-direct {p0, p1, v5}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9a
    :goto_9a
    return-object v1
.end method

.method private final varargs completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 20

    move-object v9, p0

    .line 1
    new-instance v8, Ljava/lang/ref/SoftReference;

    iget-object v0, v9, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v8, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-static/range {p5 .. p6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/ref/SoftReference;)V

    invoke-static {v10, v11, v12}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->registerCallback(Lio/dcloud/common/adapter/ui/AdaWebview;Ljava/lang/String;Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iget-object v1, v9, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method private directPageIsLaunchPage(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5
    :cond_8
    :try_start_8
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    .line 13
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const-string p2, ""

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 14
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v1, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_21

    return-object p2

    :catch_21
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;Ljava/io/File;Z)Landroid/webkit/WebResourceResponse;
    .registers 17

    move-object v8, p4

    .line 17
    invoke-static {p3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    if-nez p5, :cond_b

    goto/16 :goto_9f

    .line 20
    :cond_b
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->showLoading()V

    const/4 v1, 0x0

    .line 23
    :try_start_f
    new-instance v0, Ljava/net/URL;

    move-object v4, p3

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_82
    .catchall {:try_start_f .. :try_end_1c} :catchall_7f

    const/16 v0, 0x1388

    .line 25
    :try_start_1e
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 26
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "GET"

    .line 27
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 29
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_53

    const/16 v1, 0xce

    if-ne v0, v1, :cond_3a

    goto :goto_53

    :cond_3a
    const/16 v1, 0x190

    if-lt v0, v1, :cond_42

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_4f

    :cond_42
    if-eqz p6, :cond_4f

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 46
    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;Ljava/io/File;Z)Landroid/webkit/WebResourceResponse;

    goto :goto_75

    .line 48
    :cond_4f
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V

    goto :goto_75

    .line 49
    :cond_53
    :goto_53
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 50
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 52
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V

    goto :goto_75

    :cond_65
    if-eqz p6, :cond_72

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 55
    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebResourceResponse;Ljava/io/File;Z)Landroid/webkit/WebResourceResponse;

    goto :goto_75

    .line 57
    :cond_72
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_75} :catch_7c
    .catchall {:try_start_1e .. :try_end_75} :catchall_78

    :goto_75
    if-eqz v9, :cond_8c

    goto :goto_89

    :catchall_78
    move-exception v0

    move-object v2, p0

    move-object v1, v9

    goto :goto_96

    :catch_7c
    move-exception v0

    move-object v1, v9

    goto :goto_83

    :catchall_7f
    move-exception v0

    move-object v2, p0

    goto :goto_96

    :catch_82
    move-exception v0

    .line 68
    :goto_83
    :try_start_83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_7f

    if-eqz v1, :cond_8c

    move-object v9, v1

    .line 71
    :goto_89
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    :cond_8c
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V

    move-object v2, p0

    move-object v1, p2

    .line 75
    invoke-direct {p0, p2, p4}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->handleDecode(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0

    :goto_96
    if-eqz v1, :cond_9b

    .line 76
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    :cond_9b
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V

    .line 79
    throw v0

    :cond_9f
    :goto_9f
    move-object v2, p0

    return-object v8
.end method

.method private downloadResponseInjection(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 21

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v6, 0x1000

    const-string v7, ";url="

    const-string v8, "WebLoadEvent"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_1f3

    .line 4
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getPreLoadJsString()Ljava/lang/String;

    move-result-object v11

    .line 6
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v12, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    const/4 v13, 0x0

    if-nez v12, :cond_4d

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 8
    :try_start_2e
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v12, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFile:Ljava/lang/String;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v12, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 10
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_42} :catch_43

    goto :goto_4e

    :catch_43
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v12, "Exception"

    invoke-static {v12, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    move-object v0, v13

    .line 16
    :goto_4e
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5f

    if-nez v0, :cond_5f

    iget-object v12, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5f

    return-object v13

    .line 21
    :cond_5f
    :try_start_5f
    invoke-static/range {p2 .. p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_163

    iget-object v12, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v12, v12, Lio/dcloud/common/adapter/ui/AdaWebview;->mNeedInjection:Z

    if-nez v12, :cond_71

    iget-boolean v12, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->isInitAmapGEO:Z

    if-nez v12, :cond_71

    if-eqz v0, :cond_163

    .line 22
    :cond_71
    invoke-direct {p0, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getUrlFile(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;

    move-result-object v3

    if-eqz v3, :cond_1ab

    .line 24
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v0, :cond_85

    .line 26
    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 27
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mForceAHeadJsFileLoaded:Z

    .line 29
    :cond_85
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8b} :catch_1ea

    const-string v13, "ahead"

    if-nez v0, :cond_a8

    :try_start_8f
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 30
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 31
    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    .line 32
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 34
    :cond_a8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mPlusrequire=ahead;this="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 37
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 39
    :cond_d7
    iget-boolean v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->isInitAmapGEO:Z

    if-eqz v0, :cond_fe

    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/DLGeolocation;->checkInjectGeo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 41
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    .line 42
    invoke-static {}, Lio/dcloud/common/util/DLGeolocation;->getGEOJS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 44
    :cond_fe
    iget-boolean v0, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mExist:Z
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_100} :catch_1ea

    if-eqz v0, :cond_11d

    .line 46
    :try_start_102
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v10, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mFile:Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v6, v6, [B

    .line 49
    :goto_10b
    invoke-virtual {v0, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_115

    .line 50
    invoke-virtual {v12, v6, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10b

    .line 52
    :cond_115
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_118} :catch_119
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_118} :catch_1ea

    goto :goto_11d

    :catch_119
    move-exception v0

    .line 54
    :try_start_11a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 57
    :cond_11d
    :goto_11d
    iget-object v0, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_128

    .line 58
    iget-object v0, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;

    goto :goto_12a

    :cond_128
    move-object/from16 v0, p4

    .line 60
    :goto_12a
    iget-object v6, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mContentType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_135

    .line 61
    iget-object v3, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mContentType:Ljava/lang/String;

    goto :goto_137

    :cond_135
    move-object/from16 v3, p3

    .line 63
    :goto_137
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    iget-object v9, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v9, v9, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_161

    .line 65
    iget-object v9, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v9

    invoke-interface {v9}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebView;

    iget-object v10, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v10

    const-string v11, "inject_with_js"

    invoke-direct {p0, v9, v10, v11}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->listenPlusInjectTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_161
    move-object v13, v6

    goto :goto_1af

    :cond_163
    const-string v0, "html5plus://ready"

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 69
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_171} :catch_1ea

    if-nez v0, :cond_1ab

    const-string v0, "PLUSREADY"

    .line 71
    :try_start_175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v10, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    .line 73
    new-instance v13, Ljava/io/ByteArrayInputStream;

    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1ab

    .line 75
    :cond_1a0
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 76
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :cond_1ab
    :goto_1ab
    move-object/from16 v3, p3

    move-object/from16 v0, p4

    :goto_1af
    if-eqz v13, :cond_1b7

    .line 79
    new-instance v6, Landroid/webkit/WebResourceResponse;

    invoke-direct {v6, v3, v0, v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_1b6} :catch_1ea

    goto :goto_1b9

    :cond_1b7
    move-object/from16 v6, p1

    :goto_1b9
    if-eqz v6, :cond_1f0

    .line 82
    :try_start_1bb
    iget-object v3, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object v0, v3, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63d0\u524d\u6ce8\u5165JS\u6210\u529f\u8017\u65f6\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1e7} :catch_1e8

    goto :goto_1f0

    :catch_1e8
    move-exception v0

    goto :goto_1ed

    :catch_1ea
    move-exception v0

    move-object/from16 v6, p1

    .line 86
    :goto_1ed
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f0
    :goto_1f0
    move-object v11, v6

    goto/16 :goto_28e

    .line 88
    :cond_1f3
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_CSS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28c

    .line 89
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getCssString()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v11, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v11, v11, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    if-nez v11, :cond_28c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_28c

    .line 93
    :try_start_20d
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    invoke-direct {p0, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getUrlFile(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;

    move-result-object v3

    if-eqz v3, :cond_239

    .line 96
    iget-boolean v12, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mExist:Z

    if-eqz v12, :cond_232

    .line 97
    new-instance v12, Ljava/io/FileInputStream;

    iget-object v13, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mFile:Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-array v6, v6, [B

    .line 100
    :goto_225
    invoke-virtual {v12, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_22f

    .line 101
    invoke-virtual {v11, v6, v9, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_225

    .line 103
    :cond_22f
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 105
    :cond_232
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 107
    :cond_239
    iget-object v0, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_244

    .line 108
    iget-object v0, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_243} :catch_285

    goto :goto_246

    :cond_244
    move-object/from16 v0, p4

    :goto_246
    const-string v3, "text/css"

    .line 111
    :try_start_248
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    new-instance v11, Landroid/webkit/WebResourceResponse;

    invoke-direct {v11, v3, v0, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_256} :catch_285

    .line 117
    :try_start_256
    iget-object v3, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v10, v3, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    .line 118
    iput-object v0, v3, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63d0\u524d\u6ce8\u5165CSS\u6210\u529f\u8017\u65f6\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_284} :catch_287

    goto :goto_28e

    :catch_285
    move-object/from16 v11, p1

    .line 122
    :catch_287
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v9, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    goto :goto_28e

    :cond_28c
    move-object/from16 v11, p1

    :goto_28e
    return-object v11
.end method

.method private getCacheLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_54

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "__plus__cache__/"

    if-eqz p2, :cond_34

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".js"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/dcloud/common/util/Md5Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".css"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_54
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    .line 6
    :goto_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "text/plain"

    :cond_18
    return-object p0
.end method

.method private getUrlByFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 3
    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAppid:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/IActivityHandler;->getUrlByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    return-object p1
.end method

.method private getUrlFile(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getCacheLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_4
    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4
    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mFile:Ljava/io/File;

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    iput-boolean v2, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mExist:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object v1

    :catch_1d
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    const/4 v1, 0x0

    .line 15
    :try_start_22
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 17
    instance-of v3, p1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_d9

    const/4 v4, 0x1

    if-eqz v3, :cond_50

    .line 20
    :try_start_32
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 22
    move-object v5, p1

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 24
    :cond_3e
    move-object v3, p1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v4}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_48} :catch_49

    goto :goto_50

    :catch_49
    move-exception p1

    .line 26
    :try_start_4a
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_50
    :goto_50
    const/16 v3, 0x1388

    .line 29
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 30
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "GET"

    .line 31
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 35
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d8

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string v5, "javascript"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    :cond_7e
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_CSS:Ljava/lang/String;

    .line 39
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d8

    const-string p2, "text/css"

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9a

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v2, ".css"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d8

    :cond_9a
    const/16 p2, 0xc8

    if-eq v3, p2, :cond_a2

    const/16 p2, 0xce

    if-ne v3, p2, :cond_d8

    .line 42
    :cond_a2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 44
    invoke-static {p2, v0}, Lio/dcloud/common/adapter/io/DHFile;->writeFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 45
    invoke-static {p2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    if-eqz v2, :cond_ca

    .line 47
    new-instance p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;

    invoke-direct {p2, p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V

    .line 48
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mFile:Ljava/io/File;

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mExist:Z

    .line 50
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;

    .line 51
    iput-object v4, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mContentType:Ljava/lang/String;

    return-object p2

    .line 54
    :cond_ca
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_d8

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_d8} :catch_d9

    :cond_d8
    return-object v1

    :catch_d9
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private handleDecode(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 6
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {p2, p1, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_1e
    return-object p2
.end method

.method private hideLoading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private listenPlusInjectTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_f

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Plus_Inject_Runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 5
    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_16
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Plus_Inject_Runnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0xbb8

    .line 18
    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private loadAllJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onLoadPlusJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private onExecuteEvalJSStatck(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->get_eval_js_stack()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v6, v2

    new-array v8, v1, [Ljava/lang/Object;

    aput-object p2, v8, v2

    const-string v7, "(function(){/*console.log(\'eval js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(location.__plusready__||window.__html5plus__){return 1}return 0})();"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-direct/range {v2 .. v8}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private onLoadCssContent()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    const-string v2, "WebLoadEvent"

    if-eqz v1, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u7ecf\u63d0\u524d\u6ce8\u5165CSS\u5b8c\u6210\u3002\u4e0d\u9700\u8981\u518d\u6ce8\u5165\u4e86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_23
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadCssFile()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d0\u524d\u6ce8\u5165CSS\u5b8c\u6210"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

.method private onLoadPlusJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 4
    :cond_e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->isRealInject(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "WebLoadEvent"

    const/4 v3, 0x1

    if-eqz v0, :cond_34

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "all.js\u5df2\u7ecf\u6ce8\u5165\u5b8c\u6210\u3002\u4e0d\u9700\u8981\u518d\u6ce8\u5165\u4e86"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 8
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadPlusJSContent all.js\u6ce8\u5165 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";tag="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";mAdaWebview.mPlusrequire="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v2, "later"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, "onPageFinished"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 10
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, v0, p2, p3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9f

    .line 21
    :cond_81
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    .line 22
    iput-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    aput-object v0, v8, v1

    const-string v0, "window.plus && (plus.android.import=plus.android.importClass);"

    aput-object v0, v8, v3

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p2, v10, v1

    const-string v9, "(function(){/*console.log(\'all.js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(!location.__plusready__){location.__plusready__=true;return 1}else{return 2}return 0})();"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_9f
    return v1
.end method

.method private onPlusreadyEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "plusready"

    aput-object v4, v2, v3

    const-string v5, "javascript:(function(){if(!((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus)){window.__load__plus__&&window.__load__plus__();}var e = document.createEvent(\'HTMLEvents\');var evt = \'%s\';e.initEvent(evt, false, true);/*console.log(\'dispatch \' + evt + \' event\');*/document.dispatchEvent(e);})();"

    .line 2
    invoke-static {v5, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "!function(){try{var a,b,c,d,e=document.getElementsByTagName(\"iframe\");if(e&&e.length)for(a=0;a<e.length;a++)b=e[a],c=b.contentWindow.document.createEvent(\"HTMLEvents\"),d=\"%s\",c.initEvent(d,!1,!0),b.contentWindow.plus=((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus),b.contentWindow.document.dispatchEvent(c)}catch(d){}}();"

    .line 4
    invoke-static {v4, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v1

    const/4 v0, 0x2

    const-string v2, "plus.webview.currentWebview().__needTouchEvent__()"

    aput-object v2, v9, v0

    new-array v11, v1, [Ljava/lang/Object;

    aput-object p2, v11, v3

    const-string v10, "(function(){/*console.log(\'plusready event loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(location.__plusready__||window.__html5plus__){if(!location.__plusready__event__){location.__plusready__event__=true;return 1}else{return 2}}return 0})();"

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v5 .. v11}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private printOpenLog(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6e

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    if-eqz p1, :cond_6e

    const-string v1, "http://"

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, "https://"

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_6e

    .line 12
    :cond_41
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 16
    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    .line 17
    invoke-static {p1, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_6e
    :goto_6e
    return-void
.end method

.method private printResourceLog(Landroid/webkit/WebView;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    if-eqz p1, :cond_76

    if-nez p2, :cond_11

    goto :goto_76

    .line 4
    :cond_11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 5
    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 7
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mClearCache:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mLastPageUrl:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 10
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 13
    :cond_37
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mLastPageUrl:Ljava/lang/String;

    .line 15
    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "http://"

    .line 17
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_76

    const-string p3, "https://"

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4e

    goto :goto_76

    .line 22
    :cond_4e
    invoke-static {p4}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 25
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p4, v0

    .line 26
    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    const-string p1, "{\"resource\": {\"%s\":\"%s\"}}"

    .line 27
    invoke-static {p1, p4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    .line 28
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_76
    :goto_76
    return-void
.end method

.method private sendStatistics(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 10

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    .line 6
    :goto_f
    invoke-static {p2}, Lio/dcloud/common/util/TelephonyUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p2}, Lio/dcloud/common/util/TestUtil$PointTime;->getBaseVer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    .line 8
    invoke-static {p1, v1, v3, v2, v0}, Lio/dcloud/common/constant/DataInterface;->getStatisticsUrl(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p4}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "http://"

    .line 17
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "https://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_87

    .line 22
    :cond_32
    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-interface {p5, p4}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 25
    invoke-interface {p5, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 27
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&net="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/dcloud/common/util/NetworkTypeUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&sr="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sh="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pn="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sPackageName:Ljava/lang/String;

    if-nez p1, :cond_7d

    sget-object p1, Lio/dcloud/common/adapter/util/AndroidResources;->packageName:Ljava/lang/String;

    :cond_7d
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;)[B

    :cond_87
    :goto_87
    return-void
.end method

.method private shouldRuntimeHandle(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method private showLoading()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$11;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$11;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mShowLoadingTime:J

    return-void
.end method

.method private startTryLoadAllJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->loadAllJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeWap2AppBlockDialog(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialog:Lio/dcloud/common/adapter/ui/WaitingView;

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/WaitingView;->close()V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialogSysEventListener:Lio/dcloud/common/DHInterface/ISysEventListener;

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialog:Lio/dcloud/common/adapter/ui/WaitingView;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialogSysEventListener:Lio/dcloud/common/DHInterface/ISysEventListener;

    if-eqz p1, :cond_22

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWap2AppBlockDialog:Lio/dcloud/common/adapter/ui/WaitingView;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    return-void
.end method

.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :cond_d
    return-void
.end method

.method getErrorPage()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->errorPage:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 6
    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "error"

    const-string v4, "none"

    if-nez v1, :cond_94

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    .line 9
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 12
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b0

    .line 14
    :cond_48
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 15
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5, v1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getRelPath(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-static {v1, v5}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->isWap2appTemplateFile(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 18
    invoke-static {v5}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->handleWap2appTemplateFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    :cond_6d
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b0

    .line 26
    :cond_85
    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 28
    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b0

    .line 36
    :cond_94
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 38
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b0

    :cond_af
    move-object v0, v4

    :cond_b0
    :goto_b0
    return-object v0
.end method

.method injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "onPageFinished"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v1, "later"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, v0, p2, p3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_25

    .line 15
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onPreloadJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onPlusreadyEvent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_25
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onLoadCssContent()V

    return-void
.end method

.method public listenPageFinishTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->isRealInject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 4
    :cond_10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Page_Finish_Runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    .line 5
    invoke-static {v0}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    :cond_17
    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Page_Finish_Runnable:Ljava/lang/Runnable;

    const-wide/16 p1, 0x1770

    .line 17
    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :goto_23
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->printLog:Z

    if-eqz v0, :cond_1f

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebLoadEvent"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->needResponseRedirect:Z

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->printResourceLog(Landroid/webkit/WebView;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->obtainStatus()B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_41

    .line 13
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->onLoading()V

    .line 15
    :cond_41
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkResourceLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 16
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{url:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listenResourceLoading"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_68
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 20
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebLoadEvent"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p1, "mAdaWebview.mFrameView.obtainApp()===null"

    .line 8
    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2f
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->hadClearHistory(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 12
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v2, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    return-void

    .line 17
    :cond_3d
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_62

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getErrorPage()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "data:text/html,chromewebdata"

    .line 21
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v4, "none"

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_60

    :cond_5f
    return-void

    :cond_60
    :goto_60
    const/4 v0, 0x1

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    .line 34
    :goto_63
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    if-eqz v4, :cond_92

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished will exe titleUpdate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v5, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v6, "titleUpdate"

    invoke-virtual {v5, v6, v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v2, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    .line 39
    :cond_92
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4, v3, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 43
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadForceAHeadJs()V

    .line 45
    invoke-direct {p0, p1, p2, v5}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onLoadPlusJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->isRealInject(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 47
    invoke-virtual {p0, p1, p2, v5}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_cb
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v5, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v6, "loaded"

    invoke-virtual {v5, v6, v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_fe

    new-array v0, v4, [Ljava/lang/Object;

    const-string v6, "error"

    aput-object v6, v0, v2

    .line 53
    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v6, v6, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const-string v6, "javascript:(function(){var b=document.createEvent(\'HTMLEvents\');var a=\'%s\';b.url=\'%s\';b.href=\'%s\';b.initEvent(a,false,true);console.error(a);document.dispatchEvent(b);})();"

    invoke-static {v6, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v6, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object v5, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 56
    iput-boolean v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 58
    :cond_fe
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 69
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->obtainStatus()B

    move-result v6

    if-eq v6, v4, :cond_10b

    .line 70
    invoke-interface {v0, v5}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->onPreShow(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 72
    :cond_10b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v4, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-nez v4, :cond_115

    .line 73
    iput-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    .line 74
    iput-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    .line 76
    :cond_115
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    if-eqz v0, :cond_147

    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_147

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished mWebViewImpl.clearHistory url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->clearHistory()V

    .line 81
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->justClearOption:Z

    .line 83
    :cond_147
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->webReload(Z)V

    .line 85
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

    if-eqz v0, :cond_157

    .line 86
    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;->onLoad()V

    .line 88
    :cond_157
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_173

    .line 90
    :try_start_15b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 91
    iput-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16e} :catch_16f

    goto :goto_173

    :catch_16f
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :cond_173
    :goto_173
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    .line 97
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_185

    .line 98
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_185
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getErrorPage()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "data:text/html,chromewebdata"

    .line 7
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "none"

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_40

    .line 12
    :cond_26
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 14
    :cond_3a
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 15
    iput-object v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 18
    :cond_40
    :goto_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted url="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WebLoadEvent"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->onPageStarted()V

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->printOpenLog(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->hadClearHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    return-void

    .line 25
    :cond_67
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v3, "ahead"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "onPageStarted"

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->listenPlusInjectTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    const-string v0, "data:"

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 29
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setUrlStr(Ljava/lang/String;)V

    .line 32
    :cond_89
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->resetPlusLoadSaveData()V

    .line 34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getUrlStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 35
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v4, "window_close"

    invoke-virtual {v3, v4, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_a7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, v2, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v3, "loading"

    .line 49
    invoke-virtual {v2, v3, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->obtainStatus()B

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_bf

    .line 51
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->onPreLoading()V

    .line 53
    :cond_bf
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v3, :cond_115

    .line 56
    :try_start_cc
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    if-nez v0, :cond_115

    .line 57
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    .line 58
    sget-object v0, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    sget-object v2, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v3, "7%"

    const/4 v4, -0x1

    .line 60
    invoke-static {v3, v0, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v3

    .line 63
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mWaitingForWapPage:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v6, v3, v3, v0, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_110} :catch_111

    goto :goto_115

    :catch_111
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_115
    :goto_115
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v2, v0, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v2, :cond_173

    .line 71
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    if-eqz v2, :cond_158

    .line 72
    move-object v2, v0

    check-cast v2, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-static {v2}, Lio/dcloud/common/util/TitleNViewUtil;->stopProcess(Lio/dcloud/common/DHInterface/ITitleNView;)V

    .line 73
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 74
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    .line 76
    :cond_158
    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-direct {v1, v2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;-><init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    .line 77
    check-cast v0, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->startProcess(Lio/dcloud/common/DHInterface/ITitleNView;)V

    .line 78
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mTitleNViewProgressStop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    :cond_173
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_180

    .line 81
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_180
    return-void
.end method

.method public onPreloadJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 2
    :cond_1d
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    const-string v2, "WebLoadEvent"

    if-eqz v1, :cond_40

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mPreloadJs \u5df2\u7ecf\u63d0\u524d\u6ce8\u5165JS\u5b8c\u6210\u3002\u4e0d\u9700\u8981\u518d\u6ce8\u5165\u4e86"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_40
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getPreLoadJsString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 8
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " tag="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-array v8, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v8, v1

    new-array v10, v3, [Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsFile:Ljava/util/ArrayList;

    aput-object v0, v10, v1

    const-string v9, "(function(){/*console.log( \'preload js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}var jsfile=\'%s\';if(location.__plusready__||window.__html5plus__){location.__preload__=location.__preload__||[];if(location.__preload__.indexOf(jsfile)<0){location.__preload__.push(jsfile);return 1}else{return 2}}return 0})();"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v3, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoaded:Z

    :cond_85
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";failingUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebLoadEvent"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v3, "failed"

    invoke-virtual {v2, v3, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z

    .line 8
    iput-object p4, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->errorPageUrl:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_fd

    .line 13
    :try_start_49
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_51} :catch_f9

    const/4 v3, 0x0

    const-string v4, "none"

    if-eqz v2, :cond_d0

    :try_start_56
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 14
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_d0

    const-string v2, "launchError"

    .line 15
    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d0

    .line 17
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 18
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 20
    sget v5, Lio/dcloud/base/R$string;->dcloud_common_tips:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 21
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    sget v3, Lio/dcloud/base/R$string;->dcloud_common_no_network_tips:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 24
    new-instance v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;

    invoke-direct {v3, p0, p4, v4}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/app/AlertDialog;)V

    .line 43
    new-instance v5, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;

    invoke-direct {v5, p0, v4}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const/4 v5, -0x2

    .line 55
    sget v6, Lio/dcloud/base/R$string;->dcloud_common_set_network:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v5, -0x3

    .line 56
    sget v6, Lio/dcloud/base/R$string;->dcloud_common_retry:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v5, -0x1

    .line 57
    sget v6, Lio/dcloud/base/R$string;->dcloud_common_exit:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 59
    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;

    invoke-direct {v2, p0, p4, v0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const-string v0, "onReceivedError do clearHistory"

    .line 76
    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->clearHistory()V

    goto :goto_fd

    .line 79
    :cond_d0
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->getErrorPage()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError  load errorPage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    goto :goto_fd

    .line 105
    :cond_f4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-boolean v3, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->hasErrorPage:Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_f8} :catch_f9

    goto :goto_fd

    :catch_f9
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_fd
    :goto_fd
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10a

    .line 113
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_10a
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_c4

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_c

    goto/16 :goto_c4

    .line 4
    :cond_c
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "untrustedca"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedSslError++type===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceivedSslError"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refuse"

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 7
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto/16 :goto_b7

    :cond_3b
    const-string v1, "warning"

    .line 8
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 9
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x1080061

    .line 11
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 12
    sget v2, Lio/dcloud/base/R$string;->dcloud_common_safety_warning:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v2, 0x0

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_6a

    .line 16
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 18
    :cond_6a
    sget v3, Lio/dcloud/base/R$string;->dcloud_common_certificate_continue:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_8a
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;

    invoke-direct {v2, p0, v1, p3, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v1, v4, v3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_b7

    :cond_b3
    const/4 v0, 0x1

    .line 42
    invoke-static {p2, v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Landroid/os/Handler;I)V

    .line 44
    :goto_b7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 45
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_c4
    :goto_c4
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 3
    instance-of v0, p1, Lio/dcloud/common/adapter/ui/webview/SysWebView;

    if-eqz v0, :cond_25

    .line 5
    check-cast p1, Lio/dcloud/common/adapter/ui/webview/SysWebView;

    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->doKeyDownAction(ILandroid/view/KeyEvent;)Z

    goto :goto_25

    .line 9
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/adapter/ui/webview/SysWebView;->doKeyUpAction(ILandroid/view/KeyEvent;)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public onUpdatePlusData(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScreenAndDisplayJson(Lio/dcloud/common/DHInterface/IWebview;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onExecuteEvalJSStatck(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function(){/*console.log(\'all.js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(!location.__plusready__){location.__plusready__=true;return 1}else{return 2}return 0})();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainPrePlusreadyJs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "window.plus && (plus.android.import=plus.android.importClass);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    return-void
.end method

.method public setDcloudwebviewclientListener(Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    return-void
.end method

.method public setPageFinishedCallack(Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPageFinishedCallack:Lio/dcloud/common/adapter/ui/webview/OnPageFinishedCallack;

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 14

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 4
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 7
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v2, p1, p2}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 9
    :cond_1c
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->checkWebResourceResponseRedirect(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    if-eqz p1, :cond_23

    return-object p1

    .line 12
    :cond_23
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "image/gif"

    const-string v4, "image/png"

    const-string v5, ".gif"

    const-string v6, "image/jpeg"

    const-string v7, ".png"

    const-string v8, ".jpg"

    if-nez p1, :cond_131

    const-string p1, "plusfile://"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bd

    const-string v9, ""

    .line 15
    invoke-virtual {p2, p1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "_downloads"

    .line 17
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "_doc"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "_documents"

    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5c

    goto :goto_62

    .line 27
    :cond_5c
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_8b

    .line 28
    :cond_62
    :goto_62
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-interface {v9, v1, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "file:///"

    .line 29
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_79

    const/4 v9, 0x7

    .line 30
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_79
    const-string v9, "file://"

    .line 32
    invoke-virtual {p1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    const/4 v9, 0x6

    .line 33
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_86
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    :goto_8b
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_131

    .line 42
    :try_start_91
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a2

    move-object v9, v6

    goto :goto_b1

    .line 46
    :cond_a2
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_aa

    move-object v9, v4

    goto :goto_b1

    .line 48
    :cond_aa
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b1

    move-object v9, v3

    .line 51
    :cond_b1
    :goto_b1
    new-instance v10, Landroid/webkit/WebResourceResponse;

    invoke-direct {v10, v9, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_b6
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_b6} :catch_b7

    return-object v10

    :catch_b7
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_131

    :cond_bd
    const-string p1, "h5pscript://"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_fd

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-static {p1, v9}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object p1

    .line 62
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_131

    .line 64
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e7

    move-object v3, v6

    goto :goto_f7

    .line 66
    :cond_e7
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ef

    move-object v3, v4

    goto :goto_f7

    .line 68
    :cond_ef
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f6

    goto :goto_f7

    :cond_f6
    move-object v3, v9

    .line 71
    :goto_f7
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v3, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_fd
    const-string p1, "plus-confusion://"

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_131

    const/16 p1, 0x11

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    iget-object v10, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v9

    invoke-static {p1, v9}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object p1

    .line 78
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz p1, :cond_131

    .line 80
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, v9, v1, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    .line 87
    :cond_131
    :goto_131
    invoke-static {p2}, Lio/dcloud/common/util/ImageLoaderUtil;->isDownload(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_176

    .line 89
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_176

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_176

    .line 91
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_157

    move-object v3, v6

    goto :goto_167

    .line 94
    :cond_157
    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15f

    move-object v3, v4

    goto :goto_167

    .line 96
    :cond_15f
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_166

    goto :goto_167

    :cond_166
    move-object v3, v9

    .line 100
    :goto_167
    :try_start_167
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 101
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-direct {p1, v3, v1, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_171
    .catch Ljava/io/FileNotFoundException; {:try_start_167 .. :try_end_171} :catch_172

    return-object p1

    :catch_172
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 109
    :cond_176
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_17e

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkResourceRequestUrl(Ljava/lang/String;)Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;

    move-result-object v1

    .line 111
    :cond_17e
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez p1, :cond_183

    return-object v0

    .line 115
    :cond_183
    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mEncoding:Ljava/lang/String;

    if-eqz v1, :cond_18e

    .line 117
    iget-object p2, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->redirect:Ljava/lang/String;

    .line 118
    iget-object p1, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->encoding:Ljava/lang/String;

    .line 119
    iget-object v3, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->mime:Ljava/lang/String;

    goto :goto_190

    :cond_18e
    const-string v3, "application/x-javascript"

    :goto_190
    const-string v4, "WebLoadEvent"

    .line 122
    :try_start_192
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldInterceptRequest url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";withJs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v6, v6, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusWidthJs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p2, v0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->handleDecode(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-nez v0, :cond_23f

    .line 130
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusrequire:Ljava/lang/String;

    const-string v5, "ahead"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 131
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->hasPreLoadJsFile()Z

    move-result v4

    if-eqz v4, :cond_1f6

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusWidthJs:Ljava/lang/String;

    if-eqz v4, :cond_1d8

    .line 132
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 133
    :cond_1d8
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 134
    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->checkJsFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 136
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v0

    move-object v6, p2

    move-object v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponseInjection(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_23f

    .line 138
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput-object p2, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectPlusWidthJs:Ljava/lang/String;

    goto :goto_23f

    .line 140
    :cond_1f6
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->getCssString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_222

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mIsAdvanceCss:Z

    if-nez v4, :cond_222

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_222

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->checkCssFile(Ljava/lang/String;)Z

    move-result v4
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_212} :catch_2d9

    if-eqz v4, :cond_222

    const-string v3, "text/css"

    .line 142
    :try_start_216
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_CSS:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v0

    move-object v6, p2

    move-object v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponseInjection(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_23f

    .line 143
    :cond_222
    iget-boolean v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->isInitAmapGEO:Z

    if-eqz v4, :cond_23f

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v5, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGeoLoaded:Z

    if-nez v5, :cond_23f

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mInjectGEO:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/DLGeolocation;->checkInjectGeo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 144
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v0

    move-object v6, p2

    move-object v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponseInjection(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_23f
    :goto_23f
    if-nez v0, :cond_262

    .line 149
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAppid:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_262

    const-string v4, "html5plus://ready"

    .line 151
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_262

    .line 152
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-boolean v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoaded:Z

    if-nez v4, :cond_262

    .line 153
    iget-object v9, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->TYPE_JS:Ljava/lang/String;

    move-object v4, p0

    move-object v5, v0

    move-object v6, p2

    move-object v7, v3

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponseInjection(Landroid/webkit/WebResourceResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_262
    if-nez v0, :cond_26d

    .line 157
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_26d} :catch_2d9

    :cond_26d
    if-nez v0, :cond_281

    if-eqz v1, :cond_281

    .line 175
    :try_start_271
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v5, Landroid/webkit/WebResourceResponse;

    invoke-direct {v5, v3, p1, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_27b
    .catch Ljava/io/FileNotFoundException; {:try_start_271 .. :try_end_27b} :catch_27d
    .catch Ljava/lang/Exception; {:try_start_271 .. :try_end_27b} :catch_2d9

    move-object v0, v5

    goto :goto_281

    :catch_27d
    move-exception p1

    .line 178
    :try_start_27e
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_281
    :goto_281
    if-eqz v0, :cond_2f6

    .line 181
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_2f6

    .line 182
    invoke-virtual {v0}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_294

    .line 184
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_294
    const-string v3, "Access-Control-Allow-Credentials"

    const-string v4, "true"

    .line 186
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Access-Control-Allow-Methods"

    const-string v4, "GET, POST, OPTIONS"

    .line 187
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Access-Control-Allow-Origin"

    const-string v4, "*"

    .line 188
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2d5

    .line 189
    iget-object v3, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->headerJson:Lorg/json/JSONObject;

    if-eqz v3, :cond_2d5

    .line 190
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 191
    iget-object v4, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->headerJson:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2d5

    .line 192
    :goto_2bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d5

    .line 193
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    iget-object v5, v1, Lio/dcloud/common/adapter/ui/AdaWebview$OverrideResourceRequestItem;->headerJson:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2bb

    .line 199
    :cond_2d5
    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_2d8} :catch_2d9

    return-object v0

    :catch_2d9
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAppid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 209
    :cond_2f6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_305

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_305

    return-object v2

    :cond_305
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "sms:"

    .line 1
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    .line 5
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading url="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WebLoadEvent"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iput v2, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 11
    iput-object p2, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordLastUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkOverrideUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_5f

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u68c0\u6d4b\u62e6\u622a\u56de\u8c03shouldOverrideUrlLoading url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{url:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'}"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "overrideUrlLoading"

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    .line 20
    :cond_5f
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_81

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 21
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_8a

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->directPageIsLaunchPage(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 23
    :cond_81
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1, p2}, Lio/dcloud/common/DHInterface/IApp;->updateDirectPage(Ljava/lang/String;)V

    .line 25
    :cond_8a
    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->shouldRuntimeHandle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_175

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v5, :cond_175

    .line 27
    :try_start_9b
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9f} :catch_160

    const/4 v1, -0x1

    const-string v5, "android.intent.action.VIEW"

    if-eqz p1, :cond_fb

    .line 28
    :try_start_a4
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v2, "?"

    .line 29
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_c3

    .line 31
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_c3
    add-int/lit8 p1, p1, 0x4

    .line 35
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/2addr v2, v4

    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "address"

    .line 39
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sms_body"

    .line 40
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_174

    :cond_fb
    const-string p1, "intent://"

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_137

    .line 44
    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.category.BROWSABLE"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_119

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 50
    :cond_119
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_174

    .line 52
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_174

    .line 55
    :cond_137
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_174

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_174

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->checkSchemeWhite(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_174

    .line 56
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_15f} :catch_160

    goto :goto_174

    .line 61
    :catch_160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActivityNotFoundException url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_174
    :goto_174
    return v4

    .line 98
    :cond_175
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_184

    .line 99
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mdcloudwebviewclientlister:Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    invoke-interface {v0, p1, p2}, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_184
    return v2
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass1 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$1)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->downloadResponse(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$originalUrl:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->needResponseRedirect:Z

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->val$view:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$1;->val$originalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass10 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$10)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v1, :cond_1a

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onPreloadJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$10;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->access$200(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass11 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$11)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$11;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$11;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v1, "show_loading"

    invoke-virtual {v0, v1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass12 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$12)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->hideLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-wide v3, v2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mShowLoadingTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-gez v7, :cond_2a

    .line 6
    iget-object v2, v2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->getWebView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$12;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-wide v3, v3, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mShowLoadingTime:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, p0, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 9
    :cond_2a
    iget-object v0, v2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v1, "hide_loading"

    invoke-virtual {v0, v1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass2 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$2)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$ad:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$error:Landroid/net/http/SslError;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_29

    :cond_e
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1b

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$error:Landroid/net/http/SslError;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    goto :goto_29

    :cond_1b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_29

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$handler:Landroid/webkit/SslErrorHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Landroid/os/Handler;I)V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_29
    :goto_29
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass3 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$3)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$f_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->val$f_url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_16

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_49

    :cond_16
    const/4 p1, -0x3

    if-ne p2, p1, :cond_35

    const-string p1, "WebLoadEvent"

    const-string p2, "onReceivedError try again"

    .line 4
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->val$f_url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    goto :goto_49

    :cond_35
    const/4 p1, -0x1

    if-ne p2, p1, :cond_49

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p2

    const-string v0, "closewebapp"

    .line 10
    invoke-interface {p2, v0, p1}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_49
    :goto_49
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$3;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass4 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$4)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$ad:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/app/AlertDialog;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_19

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$4;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p2

    const-string p3, "closewebapp"

    .line 4
    invoke-interface {p2, p3, p1}, Lio/dcloud/common/DHInterface/IActivityHandler;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass5 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$5)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$app:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic val$f_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->val$f_url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->val$app:Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 6

    .line 1
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, p1, :cond_1d

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p2, :cond_1d

    .line 2
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;-><init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->val$app:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass5.AnonymousClass1 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$5$1)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;->this$1:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "WebLoadEvent"

    const-string v1, "onReceivedError 500ms retry after the onResume"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;->this$1:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5$1;->this$1:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$5;->val$f_url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass6 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$6)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->onLoadPlusJSContent(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v1, :cond_29

    .line 2
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$tag:Ljava/lang/String;

    iput-object v3, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusInjectTag:Ljava/lang/String;

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mPlusLoading:Z

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$view:Landroid/webkit/WebView;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$6;->val$url:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mPlusJS:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "window.plus && (plus.android.import=plus.android.importClass);"

    aput-object v6, v5, v2

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v7

    const-string v7, "(function(){/*console.log(\'all.js loading href=\' + location.href);*/if(location.__page__load__over__){return 2}if(!location.__plusready__){location.__plusready__=true;return 1}else{return 2}return 0})();"

    move-object v2, v4

    move-object v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->access$000(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass7 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$7)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->listenPlusInjectTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_4c

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->isRealInject(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listenPlusInjectTimeout url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewData"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus_inject_timeout_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->val$tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->access$100(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$7;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mPreloadJsLoading:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Plus_Inject_Runnable:Ljava/lang/Runnable;

    :cond_4c
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass8 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$8)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->listenPageFinishTimeout(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_33

    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoaded:Z

    if-nez v1, :cond_33

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->isRealInject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page_finished_timeout_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->val$tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->injectScript(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$8;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->Timeout_Page_Finish_Runnable:Ljava/lang/Runnable;

    :cond_33
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.AnonymousClass9 (io.dcloud.common.adapter.ui.webview.WebLoadEvent$9)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/ui/ReceiveJSValue$ReceiveJSValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->completeLoadJs(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

.field final synthetic val$adaWebviewT:Ljava/lang/ref/SoftReference;

.field final synthetic val$mainJs:[Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$templateArgs:[Ljava/lang/Object;

.field final synthetic val$templateJs:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/ref/SoftReference;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$mainJs:[Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$templateJs:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$templateArgs:[Ljava/lang/Object;

    iput-object p8, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$adaWebviewT:Ljava/lang/ref/SoftReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    if-nez p1, :cond_23

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$tag:Ljava/lang/String;

    const-string v2, "onPageFinished"

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 4
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$view:Landroid/webkit/WebView;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$tag:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$mainJs:[Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$templateJs:Ljava/lang/String;

    iget-object v8, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$templateArgs:[Ljava/lang/Object;

    invoke-static/range {v2 .. v8}, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;->access$000(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47

    :cond_23
    if-ne v0, p1, :cond_47

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$mainJs:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_47

    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$adaWebviewT:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 8
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$9;->val$adaWebviewT:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3, v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->executeScript(Ljava/lang/String;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_40} :catch_43

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :catch_43
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_47
    :goto_47
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.CatchFile (io.dcloud.common.adapter.ui.webview.WebLoadEvent$CatchFile)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CatchFile"
.end annotation


# instance fields
.field mContentType:Ljava/lang/String;

.field mEncoding:Ljava/lang/String;

.field mExist:Z

.field mFile:Ljava/io/File;

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->this$0:Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mFile:Ljava/io/File;

    .line 3
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mEncoding:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mContentType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$CatchFile;->mExist:Z

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebLoadEvent.TitleNViewProgressStop (io.dcloud.common.adapter.ui.webview.WebLoadEvent$TitleNViewProgressStop)
.class Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/WebLoadEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleNViewProgressStop"
.end annotation


# instance fields
.field private mAdaWebview:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/dcloud/common/adapter/ui/AdaWebview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebLoadEvent$TitleNViewProgressStop;->mAdaWebview:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v1, :cond_61

    .line 13
    check-cast v0, Lio/dcloud/common/DHInterface/ITitleNView;

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->stopProcess(Lio/dcloud/common/DHInterface/ITitleNView;)V

    :cond_61
    return-void
.end method
