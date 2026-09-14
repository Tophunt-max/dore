###### Class io.dcloud.WebviewActivity (io.dcloud.WebviewActivity)
.class public Lio/dcloud/WebviewActivity;
.super Lio/src/dcloud/adapter/DCloudBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/WebviewActivity$e;
    }
.end annotation


# static fields
.field public static final isLocalHtmlParam:Ljava/lang/String; = "isLocalHtml"

.field public static final noPermissionAllowParam:Ljava/lang/String; = "isNoPermissionAllowParam"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lio/dcloud/WebviewActivity$e;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/webkit/WebView;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field public mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->k:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->l:Z

    return-void
.end method

.method private a(Landroid/webkit/WebView;)V
    .registers 9

    if-eqz p1, :cond_62

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const-wide/32 v2, 0x800000

    .line 8
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/16 v5, 0xc

    const-string v6, "f2l4TWBgY3tKZWBpTW9vaX9/KjZhM2Q4OGZhLTRiYTAtNDc5Zi05NDIyLWU1YWFiZTE1ODk3Yjc2"

    .line 17
    invoke-static {v6, v1, v5}, Lio/dcloud/h/a;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 19
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 20
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    const-string v0, "searchBoxJavaBridge_"

    .line 21
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 22
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 23
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lio/dcloud/WebviewActivity$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$a;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 69
    new-instance v0, Lio/dcloud/WebviewActivity$b;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$b;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 188
    :cond_62
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->i()V

    if-nez p1, :cond_68

    return-void

    .line 192
    :cond_68
    new-instance v0, Lio/dcloud/WebviewActivity$c;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$c;-><init>(Lio/dcloud/WebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->l:Z

    return p0
.end method

.method static synthetic a(Lio/dcloud/WebviewActivity;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/WebviewActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_2a

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 4
    iput-boolean v1, p0, Lio/dcloud/WebviewActivity;->i:Z

    .line 5
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 8
    :cond_1e
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 9
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    return v1

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .registers 4

    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_copy_clipboard:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->f()V

    return-void
.end method

.method private d()V
    .registers 6

    const-string v0, "title"

    .line 2
    sget v1, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_ACTS_STYLE_ActionSheetStyleIOS7:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_15

    .line 4
    new-instance v1, Lio/dcloud/feature/ui/nativeui/a;

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    .line 6
    :cond_15
    new-instance v1, Lio/dcloud/feature/ui/nativeui/a;

    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const v3, 0x103000d

    invoke-direct {v1, v2, v3}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;I)V

    .line 12
    :goto_1f
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 14
    :try_start_24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 15
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_refresh:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 18
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_copy_link:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 21
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_open_browser:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    sget v4, Lio/dcloud/base/R$string;->dcloud_common_share_page:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v0

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 29
    :goto_6d
    sget v0, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->b(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;

    .line 30
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;->a(Lorg/json/JSONArray;)Lio/dcloud/feature/ui/nativeui/a;

    .line 31
    new-instance v0, Lio/dcloud/WebviewActivity$d;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$d;-><init>(Lio/dcloud/WebviewActivity;)V

    .line 72
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Lio/dcloud/feature/ui/nativeui/a$b;)Lio/dcloud/feature/ui/nativeui/a;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/nativeui/a;->a(Z)Lio/dcloud/feature/ui/nativeui/a;

    .line 74
    invoke-virtual {v1}, Lio/dcloud/feature/ui/nativeui/a;->j()V

    return-void
.end method

.method static synthetic d(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->k:Z

    return p0
.end method

.method static synthetic e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->f:Lio/dcloud/WebviewActivity$e;

    return-object p0
.end method

.method private e()V
    .registers 3

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_open_web:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method

.method static synthetic f(Lio/dcloud/WebviewActivity;)Landroid/widget/FrameLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private f()V
    .registers 4

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_34

    const-string v1, "android.intent.extra.SUBJECT"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_34

    const-string v1, "android.intent.extra.TEXT"

    .line 5
    :try_start_19
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_share:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_34} :catch_34

    :catch_34
    return-void
.end method

.method private g()V
    .registers 4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    .line 6
    :cond_1c
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLocalHtml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->k:Z

    .line 9
    :cond_33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNoPermissionAllowParam"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/WebviewActivity;->l:Z

    .line 15
    :cond_49
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "weixin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipays"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    const-string v1, "alipayqr"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic g(Lio/dcloud/WebviewActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/WebviewActivity;->i:Z

    return p0
.end method

.method static synthetic h(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method private h()V
    .registers 6

    .line 2
    sget v0, Lio/dcloud/base/R$id;->status_bar_view:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_BACK:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    .line 5
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_CLOSE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    .line 6
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_TITLE:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->c:Landroid/widget/TextView;

    .line 7
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_REFRESH:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    .line 8
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_MENU:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    .line 9
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_CONTENT:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->g:Landroid/widget/FrameLayout;

    .line 10
    new-instance v0, Lio/dcloud/WebviewActivity$e;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/dcloud/WebviewActivity$e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->f:Lio/dcloud/WebviewActivity$e;

    .line 11
    iget-boolean v1, p0, Lio/dcloud/WebviewActivity;->k:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_67

    const/16 v1, 0x8

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_67
    sget v0, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT_WEBVIEW:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    .line 18
    invoke-direct {p0, v0}, Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41b80000    # 23.0f

    invoke-static {v1, v0}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "fonts/dcloud_iconfont.ttf"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 23
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    const-string v4, "\ue601"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 25
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 27
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    const-string v4, "\ue650"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 30
    iget-object v3, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    const-string v3, "\ue606"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 36
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v1, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 40
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    return-object p0
.end method

.method private i()V
    .registers 10

    .line 2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3c

    const/16 v1, 0x11

    if-ge v0, v1, :cond_3c

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

    .line 7
    iget-object v2, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    const/4 v3, 0x3

    const-string v5, "searchBoxJavaBridge_"

    const-string v6, "accessibility"

    const-string v7, "ccessibilityaversal"

    .line 8
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v3, :cond_3c

    .line 9
    aget-object v7, v5, v6

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v4

    .line 10
    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_38

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :catch_38
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    return-void
.end method

.method static synthetic j(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->c()V

    return-void
.end method

.method static synthetic k(Lio/dcloud/WebviewActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->e()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    const-string v2, "ANIM"

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "POP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    sget v0, Lio/dcloud/base/R$anim;->dcloud_pop_out:I

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_23

    .line 6
    :cond_1e
    sget v0, Lio/dcloud/PdrR;->ANIM_DCLOUD_SLIDE_OUT_TO_RIGHT:I

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :goto_23
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_e

    .line 2
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->b()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    goto :goto_1d

    .line 6
    :cond_e
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_16

    .line 7
    invoke-virtual {p0}, Lio/dcloud/WebviewActivity;->finish()V

    goto :goto_1d

    .line 8
    :cond_16
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1d

    .line 9
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->d()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p0}, Lio/dcloud/WebviewActivity;->setImmersive(Landroid/app/Activity;)V

    .line 2
    invoke-super {p0, p1}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lio/dcloud/PdrR;->WEBVIEW_ACTIVITY_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->g()V

    .line 5
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->h()V

    .line 6
    iget-object p1, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 7
    iget-object p1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/dcloud/WebviewActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_27

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_17
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 7
    iget-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_27
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/dcloud/WebviewActivity;->h:Landroid/webkit/WebView;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_2f
    invoke-super {p0}, Lio/src/dcloud/adapter/DCloudBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne v0, p1, :cond_f

    .line 1
    invoke-direct {p0}, Lio/dcloud/WebviewActivity;->b()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_e
    return v0

    .line 8
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setImmersive(Landroid/app/Activity;)V
    .registers 6

    if-eqz p1, :cond_3d

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3d

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x500

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v2, 0x17

    if-lt v0, v2, :cond_36

    const/16 v0, 0x2000

    :try_start_20
    const-string v2, "android.view.View"

    .line 12
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    or-int/2addr v1, v0

    .line 20
    :cond_36
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3d
    return-void
.end method

###### Class io.dcloud.WebviewActivity.a (io.dcloud.WebviewActivity$a)
.class Lio/dcloud/WebviewActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 5
    invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_14

    :cond_10
    const/4 v0, 0x1

    .line 7
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_14
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->d(Lio/dcloud/WebviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 6
    :cond_c
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_32

    .line 7
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->f(Lio/dcloud/WebviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->c()V

    goto :goto_48

    .line 9
    :cond_32
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->g(Lio/dcloud/WebviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 10
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1, v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    .line 11
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->c()V

    .line 13
    :cond_48
    :goto_48
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/WebviewActivity$e;->b()I

    move-result p1

    if-gt p1, p2, :cond_66

    .line 15
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->e(Lio/dcloud/WebviewActivity;)Lio/dcloud/WebviewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/dcloud/WebviewActivity$e;->a(I)V

    :cond_66
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    const-string p1, "https"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 3
    iget-object p1, p0, Lio/dcloud/WebviewActivity$a;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->b(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method

###### Class io.dcloud.WebviewActivity.b (io.dcloud.WebviewActivity$b)
.class Lio/dcloud/WebviewActivity$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p2}, Lio/dcloud/WebviewActivity;->h(Lio/dcloud/WebviewActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    const/4 p1, 0x4

    :goto_12
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    if-eqz p2, :cond_91

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->untrustedca:Ljava/lang/String;

    const-string v1, "refuse"

    .line 2
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto/16 :goto_91

    :cond_11
    const-string v1, "warning"

    .line 4
    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 5
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x1080061

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_safety_warning:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x0

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_46

    .line 12
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_46
    iget-object v1, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_certificate_continue:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_68
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v0, Lio/dcloud/WebviewActivity$b$b;

    invoke-direct {v0, p0, p1, p3, p2}, Lio/dcloud/WebviewActivity$b$b;-><init>(Lio/dcloud/WebviewActivity$b;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V

    .line 33
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    iget-object p2, p0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    const p3, 0x104000a

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_91

    :cond_8d
    const/4 p1, 0x1

    .line 37
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Landroid/os/Handler;I)V

    :cond_91
    :goto_91
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "\""

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_13

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_13
    move-object v3, v4

    .line 4
    :goto_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_168

    const-string v5, "streamapp://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_168

    const-string v7, "http://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_168

    const-string v7, "https://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_168

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_168

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v7, "android.intent.category.BROWSABLE"

    const-string v8, "android.intent.action.VIEW"

    const/4 v9, 0x0

    if-nez v5, :cond_8b

    .line 7
    iget-object v5, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v5, v5, Lio/dcloud/WebviewActivity;->mAppStreamSchemeWhiteDefaultList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 10
    :try_start_6f
    new-instance v2, Landroid/content/Intent;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v1, :cond_85

    .line 12
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    :cond_85
    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8a} :catch_8a

    :catch_8a
    return v6

    :cond_8b
    :try_start_8b
    const-string v5, "intent://"

    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 26
    invoke-static {v1, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v3, v5, :cond_b1

    .line 30
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_b1

    .line 33
    :cond_a7
    new-instance v3, Landroid/content/Intent;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v1, v3

    .line 35
    :cond_b1
    :goto_b1
    iget-object v3, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    .line 36
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_c6

    .line 37
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c6

    const/4 v8, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v8, 0x0

    :goto_c7
    if-eqz v8, :cond_167

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_soon_open:I

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\"Android system\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_app_open_now:I

    invoke-virtual {v9, v10}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_fd

    .line 43
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 45
    :cond_fd
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12b

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v7, Lio/dcloud/base/R$string;->dcloud_common_soon_open:I

    invoke-virtual {v5, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v4, Lio/dcloud/base/R$string;->dcloud_common_app_open_now:I

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_12b
    move-object v10, v8

    .line 48
    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v9, v2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_open:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lio/dcloud/WebviewActivity$b$a;

    invoke-direct {v13, v0, v1}, Lio/dcloud/WebviewActivity$b$a;-><init>(Lio/dcloud/WebviewActivity$b;Landroid/content/Intent;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    .line 54
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v1, v1, v3

    double-to-int v1, v1

    move/from16 v20, v1

    .line 55
    invoke-static/range {v9 .. v20}, Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_167} :catch_167

    :catch_167
    :cond_167
    return v6

    .line 67
    :cond_168
    invoke-virtual/range {p1 .. p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    iget-object v1, v0, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    invoke-static {v1, v6}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    return v6
.end method

###### Class io.dcloud.WebviewActivity.b.a (io.dcloud.WebviewActivity$b$a)
.class Lio/dcloud/WebviewActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lio/dcloud/WebviewActivity$b;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$b;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$b$a;->b:Lio/dcloud/WebviewActivity$b;

    iput-object p2, p0, Lio/dcloud/WebviewActivity$b$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$a;->b:Lio/dcloud/WebviewActivity$b;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$b;->a:Lio/dcloud/WebviewActivity;

    iget-object v0, p0, Lio/dcloud/WebviewActivity$b$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.b.DialogInterfaceOnClickListenerC0021b (io.dcloud.WebviewActivity$b$b)
.class Lio/dcloud/WebviewActivity$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$b;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/net/http/SslError;

.field final synthetic c:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$b;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/dcloud/WebviewActivity$b$b;->b:Landroid/net/http/SslError;

    iput-object p4, p0, Lio/dcloud/WebviewActivity$b$b;->c:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_e

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->cancel()V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_29

    :cond_e
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1b

    .line 4
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->b:Landroid/net/http/SslError;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    goto :goto_29

    :cond_1b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_29

    .line 6
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->c:Landroid/webkit/SslErrorHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Landroid/os/Handler;I)V

    .line 7
    iget-object p1, p0, Lio/dcloud/WebviewActivity$b$b;->a:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_29
    :goto_29
    return-void
.end method

###### Class io.dcloud.WebviewActivity.c (io.dcloud.WebviewActivity$c)
.class Lio/dcloud/WebviewActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 29

    move-object/from16 v7, p0

    move-wide/from16 v0, p5

    const-string v8, "android.intent.action.VIEW"

    .line 1
    :try_start_6
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_c6

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_da

    move-object/from16 v9, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    .line 3
    :try_start_30
    invoke-static {v2, v4, v9}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    sget v10, Lio/dcloud/base/R$string;->dcloud_common_download_do_file:I

    invoke-virtual {v3, v10}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v10, 0x0

    cmp-long v3, v10, v0

    if-gez v3, :cond_81

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u3010"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    new-instance v0, Ljava/math/BigDecimal;

    const-wide/32 v10, 0x100000

    invoke-direct {v0, v10, v11}, Ljava/math/BigDecimal;-><init>(J)V

    const/4 v1, 0x2

    const/4 v10, 0x4

    invoke-virtual {v2, v0, v1, v10}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "MB\u3011"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_81
    move-object v11, v2

    .line 8
    iget-object v0, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v10, v0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_download:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lio/dcloud/WebviewActivity$c$a;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lio/dcloud/WebviewActivity$c$a;-><init>(Lio/dcloud/WebviewActivity$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x50

    iget-object v0, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    double-to-int v0, v0

    move/from16 v21, v0

    .line 37
    invoke-static/range {v10 .. v21}, Lio/dcloud/common/util/DialogUtil;->showAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;ZIII)V

    goto :goto_f2

    :cond_c6
    move-object/from16 v9, p1

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 69
    iget-object v1, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_d9} :catch_dc

    goto :goto_f2

    :catch_da
    move-object/from16 v9, p1

    .line 73
    :catch_dc
    :try_start_dc
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v1, v7, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ed} :catch_ee

    goto :goto_f2

    :catch_ee
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f2
    return-void
.end method

###### Class io.dcloud.WebviewActivity.c.a (io.dcloud.WebviewActivity$c$a)
.class Lio/dcloud/WebviewActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$c;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/WebviewActivity$c;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iput-object p2, p0, Lio/dcloud/WebviewActivity$c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/WebviewActivity$c$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/WebviewActivity$c$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    move-result-object v0

    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p1, p1, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/WebviewActivity$c$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/WebviewActivity$c$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/WebviewActivity$c$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    new-instance v6, Lio/dcloud/WebviewActivity$c$a$a;

    invoke-direct {v6, p0}, Lio/dcloud/WebviewActivity$c$a$a;-><init>(Lio/dcloud/WebviewActivity$c$a;)V

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/common/adapter/util/DownloadUtil;->startRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;)J

    return-void
.end method

###### Class io.dcloud.WebviewActivity.c.a.C0022a (io.dcloud.WebviewActivity$c$a$a)
.class Lio/dcloud/WebviewActivity$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$c$a;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$c$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const/4 v0, 0x0

    if-nez p3, :cond_28

    const/4 v1, -0x1

    if-ne p1, v1, :cond_28

    if-nez p2, :cond_28

    .line 1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p2, p1, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p2, p2, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v2, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v3, p1, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_download_failed:I

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    return-object v0

    .line 5
    :cond_28
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "file://"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x7

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3d
    const-string v1, "content://"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p3, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p3, p3, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p3, p3, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object p3, p3, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFilePathFromContentUri(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 14
    :cond_5d
    invoke-static {p2, p1, p3}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 15
    iget-object p1, p0, Lio/dcloud/WebviewActivity$c$a$a;->a:Lio/dcloud/WebviewActivity$c$a;

    iget-object p2, p1, Lio/dcloud/WebviewActivity$c$a;->e:Lio/dcloud/WebviewActivity$c;

    iget-object p2, p2, Lio/dcloud/WebviewActivity$c;->a:Lio/dcloud/WebviewActivity;

    iget-object v1, p2, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v2, p1, Lio/dcloud/WebviewActivity$c$a;->d:Ljava/lang/String;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_download_complete:I

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lio/dcloud/PdrR;->DRAWABLE_DCLOUD_WEBVIEW_DOWNLOAD_PIN_AROUND:I

    sget v6, Lio/dcloud/PdrR;->DRAWABLE_DCLOUD_WEBVIEW_DOWNLOAD_PIN:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/NotificationUtil;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V

    return-object v0
.end method

###### Class io.dcloud.WebviewActivity.d (io.dcloud.WebviewActivity$d)
.class Lio/dcloud/WebviewActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/ui/nativeui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initCancelText(Landroid/widget/TextView;)V
    .registers 2

    return-void
.end method

.method public initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onDismiss(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(I)V
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d

    goto :goto_35

    .line 1
    :cond_d
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->c(Lio/dcloud/WebviewActivity;)V

    goto :goto_35

    .line 2
    :cond_13
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->k(Lio/dcloud/WebviewActivity;)V

    goto :goto_35

    .line 3
    :cond_19
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->j(Lio/dcloud/WebviewActivity;)V

    goto :goto_35

    .line 4
    :cond_1f
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 5
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1, v0}, Lio/dcloud/WebviewActivity;->a(Lio/dcloud/WebviewActivity;Z)Z

    .line 6
    iget-object p1, p0, Lio/dcloud/WebviewActivity$d;->a:Lio/dcloud/WebviewActivity;

    invoke-static {p1}, Lio/dcloud/WebviewActivity;->i(Lio/dcloud/WebviewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    :cond_35
    :goto_35
    return-void
.end method

###### Class io.dcloud.WebviewActivity.e (io.dcloud.WebviewActivity$e)
.class Lio/dcloud/WebviewActivity$e;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:Landroid/graphics/Paint;

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->c:I

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    .line 4
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    .line 5
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    const/16 v0, 0xff

    .line 6
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->g:I

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/WebviewActivity$e;->a:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/WebviewActivity$e;->b:F

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/WebviewActivity$e$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebviewActivity$e$a;-><init>(Lio/dcloud/WebviewActivity$e;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(I)V
    .registers 5

    .line 2
    iput p1, p0, Lio/dcloud/WebviewActivity$e;->h:I

    .line 3
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->a:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 4
    iget p1, p0, Lio/dcloud/WebviewActivity$e;->e:I

    iget v1, p0, Lio/dcloud/WebviewActivity$e;->f:I

    if-lt p1, v1, :cond_18

    .line 5
    new-instance p1, Lio/dcloud/WebviewActivity$e$b;

    invoke-direct {p1, p0}, Lio/dcloud/WebviewActivity$e$b;-><init>(Lio/dcloud/WebviewActivity$e;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_18
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    return-void
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->h:I

    return v0
.end method

.method public c()V
    .registers 2

    const/16 v0, 0xff

    .line 1
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->g:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    .line 3
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->f:I

    .line 4
    iput v0, p0, Lio/dcloud/WebviewActivity$e;->h:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/WebviewActivity$e;->g:I

    const/4 v2, 0x0

    const/16 v3, 0x99

    const/16 v4, 0x44

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lio/dcloud/WebviewActivity$e;->c:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->e:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->b:F

    add-float v5, v3, v0

    iget-object v6, p0, Lio/dcloud/WebviewActivity$e;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lio/dcloud/WebviewActivity$e;->a:I

    iget p2, p0, Lio/dcloud/WebviewActivity$e;->c:I

    iget v0, p0, Lio/dcloud/WebviewActivity$e;->b:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.e.a (io.dcloud.WebviewActivity$e$a)
.class Lio/dcloud/WebviewActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    iget v1, v0, Lio/dcloud/WebviewActivity$e;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lio/dcloud/WebviewActivity$e;->g:I

    if-lez v1, :cond_10

    const-wide/16 v1, 0x5

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 5
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 7
    iget-object v1, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$a;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebviewActivity.e.b (io.dcloud.WebviewActivity$e$b)
.class Lio/dcloud/WebviewActivity$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebviewActivity$e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebviewActivity$e;


# direct methods
.method constructor <init>(Lio/dcloud/WebviewActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    iget v1, v0, Lio/dcloud/WebviewActivity$e;->f:I

    iget v2, v0, Lio/dcloud/WebviewActivity$e;->e:I

    sub-int v3, v1, v2

    const/16 v4, 0xa

    div-int/2addr v3, v4

    const/4 v5, 0x1

    if-le v3, v4, :cond_f

    goto :goto_14

    :cond_f
    if-ge v3, v5, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    add-int/2addr v2, v4

    .line 7
    iput v2, v0, Lio/dcloud/WebviewActivity$e;->e:I

    if-le v1, v2, :cond_1f

    const-wide/16 v1, 0x5

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 10
    :cond_1f
    iget v2, v0, Lio/dcloud/WebviewActivity$e;->a:I

    if-lt v1, v2, :cond_26

    .line 11
    invoke-virtual {v0}, Lio/dcloud/WebviewActivity$e;->a()V

    .line 13
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/dcloud/WebviewActivity$e$b;->a:Lio/dcloud/WebviewActivity$e;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
