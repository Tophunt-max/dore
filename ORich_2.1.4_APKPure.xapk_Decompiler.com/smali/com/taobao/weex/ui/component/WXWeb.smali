###### Class com.taobao.weex.ui.component.WXWeb (com.taobao.weex.ui.component.WXWeb)
.class public Lcom/taobao/weex/ui/component/WXWeb;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXWeb.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# static fields
.field public static final GO_BACK:Ljava/lang/String; = "goBack"

.field public static final GO_FORWARD:Ljava/lang/String; = "goForward"

.field public static final POST_MESSAGE:Ljava/lang/String; = "postMessage"

.field public static final RELOAD:Ljava/lang/String; = "reload"


# instance fields
.field protected mWebView:Lcom/taobao/weex/ui/view/IWebView;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->createWebView()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXWeb;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 189
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    .line 191
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorMsg"

    .line 192
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1e
    return-void
.end method

.method private getWebView()Lcom/taobao/weex/ui/view/IWebView;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    return-object v0
.end method

.method private loadDataWithBaseURL(Ljava/lang/String;)V
    .registers 3

    .line 202
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadDataWithBaseURL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createWebView()V
    .registers 5

    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3d

    .line 73
    :catch_3d
    :cond_3d
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/taobao/weex/ui/view/WXWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    return-void
.end method

.method public destroy()V
    .registers 2

    .line 125
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->destroy()V

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    return-void
.end method

.method public goBack()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goForward()V

    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .line 78
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXWeb$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXWeb$1;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V

    .line 84
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXWeb$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXWeb$2;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V

    .line 114
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lcom/taobao/weex/ui/component/WXWeb$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXWeb$3;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V

    .line 120
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/IWebView;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 198
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->postMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public reload()V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->reload()V

    return-void
.end method

.method public setAction(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "goBack"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->goBack()V

    goto :goto_35

    :cond_12
    const-string v0, "goForward"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 179
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->goForward()V

    goto :goto_35

    :cond_1e
    const-string v0, "reload"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->reload()V

    goto :goto_35

    :cond_2a
    const-string v0, "postMessage"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 183
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXWeb;->postMessage(Ljava/lang/Object;)V

    :cond_35
    :goto_35
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_58

    goto :goto_2d

    :sswitch_d
    const-string v0, "show-loading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v2, 0x1

    goto :goto_2d

    :sswitch_23
    const-string v0, "source"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_66

    .line 149
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 134
    :pswitch_36
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 136
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->setShowLoading(Z)V

    :cond_43
    return v1

    .line 139
    :pswitch_44
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 141
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->setUrl(Ljava/lang/String;)V

    :cond_4d
    return v1

    .line 144
    :pswitch_4e
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 146
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->setSource(Ljava/lang/String;)V

    :cond_57
    return v1

    :sswitch_data_58
    .sparse-switch
        -0x356f97e5 -> :sswitch_23
        0x1bde4 -> :sswitch_18
        0x2003526c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_44
        :pswitch_36
    .end packed-switch
.end method

.method public setShowLoading(Z)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "show-loading"
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->setShowLoading(Z)V

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "source"
    .end annotation

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 170
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->loadDataWithBaseURL(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_28

    .line 162
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 163
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "web"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->loadUrl(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXWeb.AnonymousClass1 (com.taobao.weex.ui.component.WXWeb$1)
.class Lcom/taobao/weex/ui/component/WXWeb$1;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXWeb;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXWeb;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$1;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$1;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/component/WXWeb;->access$000(Lcom/taobao/weex/ui/component/WXWeb;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXWeb.AnonymousClass2 (com.taobao.weex.ui.component.WXWeb$2)
.class Lcom/taobao/weex/ui/component/WXWeb$2;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXWeb;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXWeb;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinish(Ljava/lang/String;ZZ)V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pagefinish"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 107
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "canGoBack"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "canGoForward"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2f
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pagestart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 98
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "receivedtitle"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "title"

    .line 89
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$2;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {p1, v1, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXWeb.AnonymousClass3 (com.taobao.weex.ui.component.WXWeb$3)
.class Lcom/taobao/weex/ui/component/WXWeb$3;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXWeb;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXWeb;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$3;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$3;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
