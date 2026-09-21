###### Class io.dcloud.feature.unipush.PrivacyActivity (io.dcloud.feature.unipush.PrivacyActivity)
.class public Lio/dcloud/feature/unipush/PrivacyActivity;
.super Landroid/app/Activity;
.source "PrivacyActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_13

    .line 45
    :cond_10
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_13
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    .line 17
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/unipush/PrivacyActivity;->setContentView(Landroid/view/View;)V

    .line 22
    iget-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/feature/unipush/PrivacyActivity$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/unipush/PrivacyActivity$1;-><init>(Lio/dcloud/feature/unipush/PrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 30
    iget-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lio/dcloud/feature/unipush/PrivacyActivity$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/unipush/PrivacyActivity$2;-><init>(Lio/dcloud/feature/unipush/PrivacyActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    iget-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity;->webView:Landroid/webkit/WebView;

    sget v0, Lio/dcloud/feature/unipush/R$string;->unipush_privacy_detail_url:I

    invoke-virtual {p0, v0}, Lio/dcloud/feature/unipush/PrivacyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.unipush.PrivacyActivity.AnonymousClass1 (io.dcloud.feature.unipush.PrivacyActivity$1)
.class Lio/dcloud/feature/unipush/PrivacyActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/PrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/PrivacyActivity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/PrivacyActivity;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity$1;->this$0:Lio/dcloud/feature/unipush/PrivacyActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 25
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class io.dcloud.feature.unipush.PrivacyActivity.AnonymousClass2 (io.dcloud.feature.unipush.PrivacyActivity$2)
.class Lio/dcloud/feature/unipush/PrivacyActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "PrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/unipush/PrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/unipush/PrivacyActivity;


# direct methods
.method constructor <init>(Lio/dcloud/feature/unipush/PrivacyActivity;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity$2;->this$0:Lio/dcloud/feature/unipush/PrivacyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 33
    iget-object p1, p0, Lio/dcloud/feature/unipush/PrivacyActivity$2;->this$0:Lio/dcloud/feature/unipush/PrivacyActivity;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/unipush/PrivacyActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
