###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent (io.dcloud.common.adapter.ui.webview.WebJsEvent)
.class public final Lio/dcloud/common/adapter/ui/webview/WebJsEvent;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;
    }
.end annotation


# static fields
.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field public static final FILECHOOSER_RESULTCODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "webview"


# instance fields
.field private defaultSystemUI:I

.field dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

.field private isNeedCloseScreenWakelock:Z

.field mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field mCustomView:Landroid/view/View;

.field mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mDefaultScreemOrientation:I

.field private mDefaultTitleBarVisibility:Z

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

.field private mScreemOrientationChanged:Z

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

.field private rptJsErr:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mScreemOrientationChanged:Z

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultTitleBarVisibility:Z

    const/4 v1, -0x2

    .line 4
    iput v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultScreemOrientation:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    .line 8
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->rptJsErr:Z

    .line 11
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->isNeedCloseScreenWakelock:Z

    .line 845
    iput v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->defaultSystemUI:I

    .line 846
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 847
    iput v0, p1, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 848
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->getCmitInfo(Ljava/lang/String;)Lio/dcloud/common/util/BaseInfo$CmtInfo;

    move-result-object p1

    iget-boolean p1, p1, Lio/dcloud/common/util/BaseInfo$CmtInfo;->rptJse:Z

    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->rptJsErr:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->showOpenFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-void
.end method

.method private handleConsoleMessage(Landroid/webkit/ConsoleMessage;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->isFilterConsoleMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 9
    :cond_10
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    .line 17
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 19
    invoke-static {v0, v3}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 23
    :cond_2d
    :try_start_2d
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->convertRelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_37} :catch_37

    .line 26
    :catch_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1, v3}, Lio/dcloud/common/util/AppConsoleLogUtil;->DCLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void
.end method

.method private handleMessage(Landroid/webkit/JsPromptResult;Lio/dcloud/common/adapter/ui/AdaWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-static {p5}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 2
    iget-object p5, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p5, p3, p4, p2, p6}, Lio/dcloud/common/adapter/ui/AdaWebview;->execScript(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

.method private initUniLoadUrl()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 4
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    .line 8
    :cond_1e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    :cond_28
    :goto_28
    return-void
.end method

.method private isCallbackId(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, "plus"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private isFilterConsoleMessage(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "viewport-fit"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_17

    :cond_f
    const-string v0, "Ignored attempt to cancel a touchend event with cancelable=false"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    :goto_17
    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method private isUrlWhiteListed(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method private openFileChooserLogic(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 6
    :cond_5
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v8, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    const/4 p1, 0x2

    const-string p2, "base"

    const-string p3, "STORAGE"

    invoke-static {v0, p2, p3, p1, v8}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method private openFileChooserLogic(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-void
.end method

.method private setStatusBarVisibility(Landroid/app/Activity;Z)V
    .registers 3

    if-eqz p2, :cond_10

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->defaultSystemUI:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2b

    .line 3
    :cond_10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    iput p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->defaultSystemUI:I

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x1706

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2b
    return-void
.end method

.method private showOpenFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 2
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    :cond_1a
    const-string p2, "*/*"

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :goto_1f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_33

    if-eqz p5, :cond_33

    .line 11
    invoke-virtual {p5}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_33

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    :cond_33
    new-instance p2, Lio/dcloud/common/adapter/ui/FileChooseDialog;

    iget-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lio/dcloud/common/adapter/ui/FileChooseDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    .line 15
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    new-instance p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;

    invoke-direct {p2, p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V

    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p2, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 100
    :try_start_5a
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->show()V

    .line 101
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    new-instance p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$11;

    invoke-direct {p2, p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$11;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_69} :catch_6a

    goto :goto_6f

    :catch_6a
    const-string p1, "openFileChooserLogic Exception"

    .line 117
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :goto_6f
    return-void
.end method

.method private updateTitleNViewTitle(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "titletext"

    const-string v2, "titleText"

    .line 1
    iget-object v3, v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v3, v3, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v3, :cond_f6

    const/4 v4, 0x0

    .line 6
    :try_start_13
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 7
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1d
    move-object v4, v0

    goto :goto_2a

    .line 8
    :cond_1f
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 9
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_2a
    :goto_2a
    if-eqz v4, :cond_30

    .line 12
    instance-of v0, v4, Ljava/lang/String;

    if-nez v0, :cond_f6

    :cond_30
    const-string v0, "titleColor"

    .line 19
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v0, "titlecolor"

    .line 21
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_42
    const-string v2, "titleSize"

    .line 25
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    const-string v2, "titlesize"

    .line 27
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_54
    move-object v8, v2

    const-string v2, "titleOverflow"

    .line 29
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "titleAlign"

    .line 30
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "titleIcon"

    .line 31
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "titleIconRadius"

    .line 32
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "subtitleText"

    .line 33
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "subtitleColor"

    .line 34
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "subtitleSize"

    .line 35
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "subtitleOverflow"

    .line 36
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "titleIconWidth"

    .line 37
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 38
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 39
    iget-object v2, v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v2

    iget-object v4, v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    iget-object v5, v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v6, v5, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v6, v5}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 40
    instance-of v4, v2, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v4, :cond_f6

    .line 41
    move-object v5, v2

    check-cast v5, Lio/dcloud/common/DHInterface/ITitleNView;
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_c4} :catch_f2

    const-string v2, "transparent"

    :try_start_c6
    const-string v4, "type"

    .line 43
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e7

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/ITitleNView;->getTitleColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-nez v2, :cond_e7

    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v2}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :cond_e7
    move-object v7, v0

    .line 46
    iget-object v0, v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v17}, Lio/dcloud/common/util/TitleNViewUtil;->drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_f1} :catch_f2

    goto :goto_f6

    :catch_f2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_f6
    :goto_f6
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public hideCustomView()V
    .registers 9

    const-string v0, "webview"

    const-string v1, "Hidding Custom View"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_c

    return-void

    .line 5
    :cond_c
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 14
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    .line 16
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 20
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 21
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_4c
    if-eqz v0, :cond_de

    .line 25
    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->isNeedCloseScreenWakelock:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_92

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v2

    if-eqz v2, :cond_92

    .line 26
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v2

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    aput-object v6, v5, v1

    const-string v6, "device"

    aput-object v6, v5, v3

    const/4 v6, 0x2

    const-string v7, "setWakelock"

    aput-object v7, v5, v6

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-interface {v2, v4, v3, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_92
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    if-eqz v2, :cond_c8

    .line 30
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v4

    if-eqz v4, :cond_c8

    .line 31
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result v4

    if-nez v4, :cond_ae

    .line 32
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    goto :goto_b9

    .line 33
    :cond_ae
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v4

    iget-boolean v4, v4, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreen:Z

    if-nez v4, :cond_b9

    .line 34
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    .line 36
    :cond_b9
    :goto_b9
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v4

    iget-boolean v4, v4, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v4, :cond_c8

    .line 37
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lio/dcloud/common/util/AppStatusBarManager;->setImmersive(Landroid/app/Activity;Z)V

    .line 41
    :cond_c8
    iget-boolean v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mScreemOrientationChanged:Z

    if-eqz v2, :cond_d5

    .line 42
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mScreemOrientationChanged:Z

    .line 43
    sput-boolean v3, Lio/dcloud/common/adapter/ui/AdaWebview;->ScreemOrientationChangedNeedLayout:Z

    .line 44
    iget v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultScreemOrientation:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 46
    :cond_d5
    invoke-static {v0}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_de

    .line 48
    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->setSideBarVisibility(I)V

    :cond_de
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->handleConsoleMessage(Landroid/webkit/ConsoleMessage;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 10

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onExceededDatabaseQuota url="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "webview"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x2

    mul-long p5, p5, p1

    .line 2
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .registers 3

    const-string v0, "webview"

    const-string v1, "onGeolocationPermissionsHidePrompt"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGeolocationPermissionsShowPrompt origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;

    invoke-direct {v2, p0, v0, p2, p1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Lio/dcloud/common/DHInterface/IApp;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string p1, "LOCATION"

    invoke-static {v1, p1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_37
    return-void
.end method

.method public onHideCustomView()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->hideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    if-nez p2, :cond_34

    .line 6
    new-instance p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    invoke-direct {p2, p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    .line 8
    :cond_34
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    iput-object p4, p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;->mResult:Landroid/webkit/JsResult;

    const p2, 0x104000a

    .line 9
    invoke-static {p2}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mListener:Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    new-instance p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;

    invoke-direct {p2, p0, p4, p1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 26
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 3
    :try_start_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x104000a

    .line 6
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;

    invoke-direct {v2, p0, p4}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    .line 13
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;

    invoke-direct {v2, p0, p4}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 20
    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;

    invoke-direct {v1, p0, p4}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;

    invoke-direct {v1, p0, p4, v0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_5b

    const/4 p1, 0x1

    return p1

    :catch_5b
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 46
    :cond_64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 26

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 1
    iget-object v0, v8, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    move-object/from16 v12, p2

    .line 5
    invoke-direct {v8, v12}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    const-string v13, "webview"

    const-string v14, ";defaultValue="

    const-string v15, "onJsPrompt js->native message="

    const-string v7, "pdr:"

    const/4 v6, 0x4

    const-string v5, "\""

    const-string v4, "\\\""

    if-eqz v0, :cond_d3

    if-eqz v10, :cond_d3

    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_d3

    invoke-virtual {v10, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 11
    :try_start_36
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    .line 15
    iget-object v2, v8, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_4f} :catch_6a

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p5

    const/4 v12, 0x1

    move-object/from16 v3, v18

    move-object v12, v4

    move-object/from16 v4, v17

    move-object v11, v5

    move-object/from16 v5, v16

    const/4 v8, 0x4

    move-object/from16 v6, p3

    move-object/from16 v19, v7

    move v7, v0

    :try_start_64
    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->handleMessage(Landroid/webkit/JsPromptResult;Lio/dcloud/common/adapter/ui/AdaWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_d1

    :catch_68
    move-exception v0

    goto :goto_70

    :catch_6a
    move-exception v0

    move-object v12, v4

    move-object v11, v5

    move-object/from16 v19, v7

    const/4 v8, 0x4

    .line 17
    :goto_70
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 18
    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v19

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    .line 22
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    goto :goto_d1

    .line 24
    :cond_b6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d1
    const/4 v1, 0x1

    return v1

    :cond_d3
    move-object v12, v4

    move-object v11, v5

    move-object v3, v7

    const/4 v2, 0x4

    move-object/from16 v7, p0

    .line 29
    iget-object v4, v7, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    if-eqz v4, :cond_17e

    if-eqz v0, :cond_17e

    if-eqz v10, :cond_17e

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_17e

    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sync:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 32
    :try_start_f6
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v4, v7, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mReceiveJSValue_android42:Lio/dcloud/common/adapter/ui/ReceiveJSValue;

    invoke-virtual {v4, v1, v0}, Lio/dcloud/common/adapter/ui/ReceiveJSValue;->__js__call__native__(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_110
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_110} :catch_119

    move-object/from16 v6, p5

    move-object v1, v11

    .line 36
    :try_start_113
    invoke-virtual {v6, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_116
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_116} :catch_117

    goto :goto_17c

    :catch_117
    move-exception v0

    goto :goto_11d

    :catch_119
    move-exception v0

    move-object/from16 v6, p5

    move-object v1, v11

    .line 38
    :goto_11d
    invoke-virtual {v10, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_161

    .line 39
    invoke-virtual {v9, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v10, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    .line 43
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    goto :goto_17c

    .line 45
    :cond_161
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17c
    const/4 v1, 0x1

    return v1

    :cond_17e
    move-object/from16 v6, p5

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v7, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, v7, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, v7, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_1b5

    .line 57
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 59
    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    .line 61
    :cond_1b5
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x104000a

    .line 62
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v3, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;

    invoke-direct {v3, v7, v2, v6}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x1040000

    .line 70
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;

    invoke-direct {v2, v7, v6}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;

    invoke-direct {v1, v7, v0, v6}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/app/AlertDialog;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v1, 0x1

    return v1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0x14

    if-ge p2, v1, :cond_10

    .line 4
    iget-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    if-nez v1, :cond_10

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    .line 7
    :cond_10
    iput p2, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mProgressIntValue:I

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "progressChanged"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 8

    const-string v0, "webview"

    const-string v1, "onReachedMaxAppCacheSize"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->unReceiveTitle:Z

    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    const-string v1, "titleUpdate"

    invoke-virtual {v0, v1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->getDCWebView()Lio/dcloud/common/adapter/ui/webview/DCWebView;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/dcloud/common/adapter/ui/webview/DCWebView;->setPageTitle(Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedTitle title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mLoadCompleted:Z

    .line 10
    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->updateTitleNViewTitle(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->initUniLoadUrl()V

    .line 12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "super.onReceivedTouchIconUrl(view, url, precomposed"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .registers 4

    const-string v0, "webview"

    const-string v1, "onRequestFocus"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

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

    .line 1
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    move-object v3, p1

    const/4 v1, 0x0

    const-string v4, ""

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseDefaultVideoPoster()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    :cond_a
    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 14

    const-string v0, "webview"

    const-string v1, "showing Custom View"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 8
    :cond_f
    invoke-static {}, Lio/dcloud/common/adapter/util/CanvasHelper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "HUAWEI MT1-U06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "SM-T310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sModel:Ljava/lang/String;

    const-string v1, "vivo Y51A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 10
    :cond_34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;-><init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V

    sget-object v2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 27
    :cond_48
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    .line 32
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_73

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_73

    .line 35
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 36
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_74

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_74

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_74

    :cond_73
    move-object v0, v1

    :cond_74
    :goto_74
    if-eqz v0, :cond_8c

    .line 43
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x11

    .line 45
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 50
    :cond_8c
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 52
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 55
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 58
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    aput-object v7, v6, v2

    const-string v7, "device"

    aput-object v7, v6, v3

    const-string v8, "__isWakelockNative__"

    const/4 v9, 0x2

    aput-object v8, v6, v9

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x3

    aput-object v8, v6, v10

    invoke-interface {v0, v4, v3, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_e6

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_e7

    :cond_e6
    const/4 v0, 0x0

    :goto_e7
    if-nez v0, :cond_10f

    .line 64
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->isNeedCloseScreenWakelock:Z

    .line 65
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    aput-object v6, v5, v2

    aput-object v7, v5, v3

    const-string v6, "setWakelock"

    aput-object v6, v5, v9

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-interface {v0, v4, v3, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10f
    const/16 v0, 0x8

    if-eqz p2, :cond_12f

    .line 69
    invoke-static {p2}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v4

    if-eqz v4, :cond_124

    .line 71
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 72
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeSideBar()V

    .line 73
    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->setSideBarVisibility(I)V

    goto :goto_12f

    .line 75
    :cond_124
    instance-of v4, p2, Lio/dcloud/common/DHInterface/IActivityDelegate;

    if-eqz v4, :cond_12f

    .line 76
    move-object v1, p2

    check-cast v1, Lio/dcloud/common/DHInterface/IActivityDelegate;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    :cond_12f
    :goto_12f
    if-eqz v1, :cond_199

    .line 81
    sget-object v4, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-direct {p0, p2, v2}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->setStatusBarVisibility(Landroid/app/Activity;Z)V

    .line 88
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    const-string v1, "videoFullscreen"

    invoke-virtual {p1, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "landscape"

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const/4 v2, 0x6

    goto :goto_181

    :cond_154
    const-string v1, "landscape-primary"

    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    goto :goto_181

    :cond_15d
    const-string v1, "landscape-secondary"

    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    const/16 v2, 0x8

    goto :goto_181

    :cond_168
    const-string v0, "portrait-primary"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    const/4 v2, 0x1

    goto :goto_181

    :cond_172
    const-string v0, "portrait-secondary"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17d

    const/16 v2, 0x9

    goto :goto_181

    .line 100
    :cond_17d
    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 102
    :goto_181
    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-eq p1, v2, :cond_199

    .line 103
    iget p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultScreemOrientation:I

    const/4 v0, -0x2

    if-ne v0, p1, :cond_192

    .line 104
    invoke-virtual {p2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mDefaultScreemOrientation:I

    .line 106
    :cond_192
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mScreemOrientationChanged:Z

    .line 107
    sput-boolean v3, Lio/dcloud/common/adapter/ui/AdaWebview;->ScreemOrientationChangedNeedLayout:Z

    .line 108
    invoke-virtual {p2, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_199
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass1 (io.dcloud.common.adapter.ui.webview.WebJsEvent$1)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$res:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;->val$res:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$1;->val$res:Landroid/webkit/JsPromptResult;

    invoke-virtual {p2, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass10 (io.dcloud.common.adapter.ui.webview.WebJsEvent$10)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->showOpenFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 5
    :try_start_22
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_5b

    .line 7
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "/"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_5b

    if-eqz v2, :cond_46

    const-string v2, "file://"

    goto :goto_48

    :cond_46
    const-string v2, "file:///"

    .line 11
    :goto_48
    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5b} :catch_5b

    .line 17
    :catch_5b
    :cond_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    return-object p1
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 10

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    .line 3
    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    if-eqz v4, :cond_1d

    .line 5
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 6
    :cond_1d
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onActivityResult:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v4, p0, v5}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_11e

    if-ne p1, v5, :cond_11e

    const/4 p1, 0x2

    .line 8
    aget-object p2, p2, p1

    check-cast p2, Landroid/content/Intent;

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-ne v1, v2, :cond_9e

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const-string v1, "content"

    if-eqz p1, :cond_70

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 p2, 0x0

    .line 14
    :goto_4c
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge p2, v5, :cond_ea

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 17
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 18
    invoke-direct {p0, v5}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 p2, p2, 0x1

    goto :goto_4c

    .line 22
    :cond_70
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_84

    .line 23
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 24
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 26
    :cond_84
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFileChooserLogic  OnActivityResult url="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "webview"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea

    :cond_9e
    if-ne v1, p1, :cond_ea

    .line 30
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/FileChooseDialog;->uris:Ljava/util/List;

    if-eqz p1, :cond_ea

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_ac
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    .line 32
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 33
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v5, v5, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dc.fileprovider"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_ea
    :goto_ea
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_fd

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/net/Uri;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    goto :goto_fe

    :cond_fd
    move-object p1, v4

    .line 43
    :goto_fe
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v1, p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_108

    .line 44
    invoke-interface {v1, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_11d

    .line 45
    :cond_108
    iget-object p1, p2, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_11d

    .line 46
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_113

    goto :goto_11a

    :cond_113
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/net/Uri;

    :goto_11a
    invoke-interface {p1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_11d
    :goto_11d
    return v2

    .line 50
    :cond_11e
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$10;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object p2, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_128

    .line 51
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_12f

    .line 52
    :cond_128
    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_12f

    .line 53
    invoke-interface {p1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_12f
    :goto_12f
    return v0
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass11 (io.dcloud.common.adapter.ui.webview.WebJsEvent$11)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->showOpenFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$11;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$11;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v0, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_12

    .line 3
    :cond_b
    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_12

    .line 4
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    :goto_12
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass12 (io.dcloud.common.adapter.ui.webview.WebJsEvent$12)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Lio/dcloud/common/DHInterface/IApp;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$origin:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$origin:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$12;->val$origin:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass13 (io.dcloud.common.adapter.ui.webview.WebJsEvent$13)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_28

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 3
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_28

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onHideCustomView()V

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$13;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->mAdaWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    const/4 p1, 0x1

    return p1

    :cond_28
    return v1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass2 (io.dcloud.common.adapter.ui.webview.WebJsEvent$2)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$res:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsPromptResult;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;->val$res:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$2;->val$res:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass3 (io.dcloud.common.adapter.ui.webview.WebJsEvent$3)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$res:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/app/AlertDialog;Landroid/webkit/JsPromptResult;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;->val$res:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    sget-boolean p1, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-nez p1, :cond_19

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x4

    if-ne p2, p1, :cond_19

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$3;->val$res:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass4 (io.dcloud.common.adapter.ui.webview.WebJsEvent$4)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$mAlert:Landroid/app/AlertDialog;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;Landroid/app/AlertDialog;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;->val$result:Landroid/webkit/JsResult;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;->val$mAlert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_15

    const/4 p1, 0x4

    if-ne p2, p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$4;->val$mAlert:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return p3

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass5 (io.dcloud.common.adapter.ui.webview.WebJsEvent$5)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$5;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass6 (io.dcloud.common.adapter.ui.webview.WebJsEvent$6)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$6;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass7 (io.dcloud.common.adapter.ui.webview.WebJsEvent$7)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$7;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass8 (io.dcloud.common.adapter.ui.webview.WebJsEvent$8)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/JsResult;Landroid/app/AlertDialog;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;->val$result:Landroid/webkit/JsResult;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x4

    if-ne p2, p1, :cond_15

    .line 3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$8;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.AnonymousClass9 (io.dcloud.common.adapter.ui.webview.WebJsEvent$9)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->openFileChooserLogic(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

.field final synthetic val$acceptType:Ljava/lang/String;

.field final synthetic val$capture:Ljava/lang/String;

.field final synthetic val$mode:Landroid/webkit/WebChromeClient$FileChooserParams;

.field final synthetic val$uploadMsg:Landroid/webkit/ValueCallback;

.field final synthetic val$uploadMsg21Level:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$uploadMsg:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$uploadMsg21Level:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$acceptType:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$capture:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$mode:Landroid/webkit/WebChromeClient$FileChooserParams;

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

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$uploadMsg:Landroid/webkit/ValueCallback;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$uploadMsg21Level:Landroid/webkit/ValueCallback;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$acceptType:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$capture:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$9;->val$mode:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/webview/WebJsEvent;->access$000(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.webview.WebJsEvent.DialogListener (io.dcloud.common.adapter.ui.webview.WebJsEvent$DialogListener)
.class Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/WebJsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogListener"
.end annotation


# instance fields
.field mResult:Landroid/webkit/JsResult;

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/webview/WebJsEvent;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;->this$0:Lio/dcloud/common/adapter/ui/webview/WebJsEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;->mResult:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/webview/WebJsEvent$DialogListener;->mResult:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
