###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb (io.dcloud.feature.weex.adapter.webview.WXDCWeb)
.class public Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;
.super Lcom/taobao/weex/ui/component/WXWeb;
.source "WXDCWeb.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;
    }
.end annotation


# instance fields
.field mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

.field private mWebStyles:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 145
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    .line 147
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorMsg"

    .line 148
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "detail"

    .line 150
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, v1, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_28
    return-void
.end method


# virtual methods
.method protected createWebView()V
    .registers 8

    const/4 v0, 0x0

    .line 44
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    nop

    .line 54
    :cond_3f
    :goto_3f
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isIsOtherInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_79

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 55
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    aput-object p0, v1, v6

    const-string v3, "io.dcloud.feature.x5.DCWXX5WebView"

    invoke-static {v3, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 56
    instance-of v2, v1, Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v2, :cond_79

    .line 57
    check-cast v1, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    .line 58
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    .line 61
    :cond_79
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-nez v1, :cond_8e

    .line 62
    new-instance v1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    .line 63
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    :cond_8e
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 230
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->destroy()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    return-void
.end method

.method public evalJS(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->evalJs(Ljava/lang/String;)V

    return-void
.end method

.method public evalJs(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 157
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_25

    const-string v0, "javascript:(function(){"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";})();"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_20
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadUrl(Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public getWebStyles()Lcom/alibaba/fastjson/JSONObject;
    .registers 4

    .line 211
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_15

    .line 212
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isProgress"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .line 69
    new-instance p1, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    .line 89
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "setOnDCMessageListener"

    invoke-static {v0, p1, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V

    .line 97
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V

    .line 133
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V

    .line 141
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/IWebView;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .registers 4

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "asset:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "file:///android_asset/"

    .line 178
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_14
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 185
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 3

    .line 220
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->setBackgroundColor(Ljava/lang/String;)V

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    if-eqz v0, :cond_22

    .line 222
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    .line 223
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    invoke-interface {v0}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 224
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    invoke-interface {v0}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_22
    return-void
.end method

.method public webviewStyles(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "webviewStyles"
    .end annotation

    .line 192
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_b

    .line 193
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    .line 195
    :cond_b
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_56

    const-string v0, "progress"

    .line 196
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 197
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 198
    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "isProgress"

    if-eqz v0, :cond_33

    .line 199
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56

    .line 200
    :cond_33
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_56

    .line 201
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 202
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color"

    .line 203
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 204
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "progressColor"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    :goto_56
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb.AnonymousClass1 (io.dcloud.feature.weex.adapter.webview.WXDCWeb$1)
.class Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;
.super Ljava/lang/Object;
.source "WXDCWeb.java"

# interfaces
.implements Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_33

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    goto :goto_3a

    .line 78
    :cond_7
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    const-string v0, "__uniapp__service"

    invoke-virtual {p2, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_3a

    .line 80
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ref"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "WebviewPostMessage"

    .line 82
    invoke-virtual {p2, v0, p1}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3a

    .line 74
    :cond_33
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const-string v0, "onPostMessage"

    invoke-virtual {p2, v0, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3a
    :goto_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb.AnonymousClass2 (io.dcloud.feature.weex.adapter.webview.WXDCWeb$2)
.class Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;
.super Ljava/lang/Object;
.source "WXDCWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-static {v0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->access$000(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb.AnonymousClass3 (io.dcloud.feature.weex.adapter.webview.WXDCWeb$3)
.class Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;
.super Ljava/lang/Object;
.source "WXDCWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinish(Ljava/lang/String;ZZ)V
    .registers 7

    .line 122
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pagefinish"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 124
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "canGoBack"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "canGoForward"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "detail"

    .line 128
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {p2, v1, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_39
    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .registers 5

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "pagestart"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "url"

    .line 113
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "detail"

    .line 115
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .registers 5

    .line 100
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "receivedtitle"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "title"

    .line 102
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "detail"

    .line 104
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_27
    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb.AnonymousClass4 (io.dcloud.feature.weex.adapter.webview.WXDCWeb$4)
.class Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;
.super Ljava/lang/Object;
.source "WXDCWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

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

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "detail"

    .line 137
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;->this$0:Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.adapter.webview.WXDCWeb.OnDCMessageListener (io.dcloud.feature.weex.adapter.webview.WXDCWeb$OnDCMessageListener)
.class public interface abstract Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;
.super Ljava/lang/Object;
.source "WXDCWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDCMessageListener"
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/util/Map;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation
.end method
